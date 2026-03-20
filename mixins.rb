module ImpressaoDecorada
  def imprimir(text)
    decoracao = "#" * 100
    puts decoracao
    puts text
    puts decoracao
  end
end

module Pernas
  include ImpressaoDecorada

  def chute_frontal
    puts "chute_frontal"
  end

  def chute_lateral
    puts "chute_lateral"
  end
end

module Bracos
  include ImpressaoDecorada

  def jab_direita
    puts "jab_direita"
  end

  def jab_esq
    puts "jab_esq"
  end

  def gancho
    puts "gancho"
  end
end

class Lutadorx
  include Pernas
  include Bracos

  def golpe_aleatorio_sem_repetir
    @golpes_disponiveis ||= []
    if @golpes_disponiveis.empty?
      @golpes_disponiveis = (Pernas.instance_methods(false) + Bracos.instance_methods(false)).shuffle
    end
    send(@golpes_disponiveis.pop)
  end
end

if __FILE__ == $PROGRAM_NAME
  lutador = Lutadorx.new
  3.times { lutador.golpe_aleatorio_sem_repetir }
  lutador.imprimir("treino")
end
