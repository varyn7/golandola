require "json"
require "net/http"
require "time"
require "uri"
require "fileutils"

class TranslatorApp
  DEFAULT_OUTPUT_DIR = "translations".freeze
  MYMEMORY_ENDPOINT = "https://api.mymemory.translated.net/get".freeze
  DEFAULT_FILENAME_FORMAT = "%Y-%m-%d_%H-%M-%S".freeze

  def initialize(output_dir: DEFAULT_OUTPUT_DIR,
                 mymemory_email: ENV["MYMEMORY_EMAIL"])
    @output_dir = output_dir
    @mymemory_email = mymemory_email
  end

  def run
    print_header
    text = prompt("Digite o texto a ser traduzido")
    return warn_and_exit("Texto vazio. Encerrando.") if text.nil? || text.empty?

    source = prompt("Idioma de origem (ex: pt, en, es)")
    return warn_and_exit("Idioma de origem vazio. Encerrando.") if source.nil? || source.empty?

    target = prompt("Idioma de destino (ex: en, pt, es)")
    return warn_and_exit("Idioma de destino vazio. Encerrando.") if target.nil? || target.empty?

    translated = translate_with_mymemory(text, source, target)
    puts "\nTexto traduzido:\n#{translated}"

    file_path = persist_translation(text, translated)
    puts "\nResultado salvo em: #{file_path}"
  rescue StandardError => e
    warn_and_exit("Falha ao traduzir: #{e.message}")
  end

  private

  def print_header
    puts "=== Tradutor CLI ==="
    puts "Provider: mymemory"
    puts "Endpoint: #{MYMEMORY_ENDPOINT}"
    puts "Dica: defina MYMEMORY_EMAIL se quiser identificar o uso."
    puts
  end

  def prompt(label)
    print "#{label}: "
    input = STDIN.gets
    input&.strip
  end

  def translate_with_mymemory(text, source, target)
    params = {
      "q" => text,
      "langpair" => "#{source}|#{target}"
    }
    params["de"] = @mymemory_email if @mymemory_email && !@mymemory_email.empty?

    uri = URI(MYMEMORY_ENDPOINT)
    uri.query = URI.encode_www_form(params)

    response = Net::HTTP.get_response(uri)
    raise "HTTP #{response.code} - #{response.message}" unless response.is_a?(Net::HTTPSuccess)

    body = JSON.parse(response.body)
    status = body["responseStatus"].to_i
    details = body["responseDetails"]

    if status != 200
      details = details.to_s.strip
      raise details.empty? ? "MyMemory: erro ao traduzir." : "MyMemory: #{details}"
    end

    translated = body.dig("responseData", "translatedText")
    raise "Resposta invalida do MyMemory." if translated.nil? || translated.empty?

    translated
  rescue JSON::ParserError
    raise "Resposta invalida do MyMemory."
  end

  def persist_translation(original, translated)
    FileUtils.mkdir_p(@output_dir)

    now = Time.now
    filename = "#{now.strftime(DEFAULT_FILENAME_FORMAT)}.txt"
    path = File.join(@output_dir, filename)

    content = <<~TEXT
      Data/Hora: #{now.iso8601}
      Origem: #{original}
      Traducao: #{translated}
    TEXT

    File.write(path, content, mode: "w:UTF-8")
    path
  end

  def warn_and_exit(message)
    warn message
    nil
  end
end

TranslatorApp.new.run
