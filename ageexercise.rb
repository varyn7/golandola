require "date"

result = ""

def clear_screen
  system(Gem.win_platform? ? "cls" : "clear")
end

def age_breakdown(birth_date, today = Date.today)
  years = 0
  months = 0

  cursor = birth_date

  while (cursor >> 12) <= today
    cursor = cursor >> 12
    years += 1
  end

  while (cursor >> 1) <= today
    cursor = cursor >> 1
    months += 1
  end

  days = (today - cursor).to_i
  [years, months, days]
end

loop do
  puts result unless result.empty?
  puts "Selecione as seguintes opcoes:"
  puts "1 - Descobrir a idade (dia/mes/ano)"
  puts "0 - Sair"
  print "Opcao: "

  option = gets&.chomp.to_i

  if option == 1
    print "Dia de nascimento (1-31): "
    day = gets&.chomp.to_i

    print "Mes de nascimento (1-12): "
    month = gets&.chomp.to_i

    print "Ano de nascimento (ex: 2005): "
    year = gets&.chomp.to_i

    begin
      birth_date = Date.new(year, month, day)
      today = Date.today

      if birth_date > today
        result = "Data invalida: #{birth_date.strftime("%d/%m/%Y")} ainda nao aconteceu."
      else
        years, months, days = age_breakdown(birth_date, today)
        total_days = (today - birth_date).to_i
        total_months = (years * 12) + months

        result = "Voce nasceu no dia #{day} do mes #{month} de #{year}. " \
                 "Hoje e #{today.strftime("%d/%m/%Y")}. " \
                 "Voce tem #{years} anos, #{months} meses e #{days} dias de idade " \
                 "(#{total_months} meses de vida e #{total_days} dias de vida)."
      end
    rescue ArgumentError
      result = "Data invalida. Tente novamente (ex: dia 31 nao existe em alguns meses)."
    end
  elsif option == 0
    break
  else
    result = "Opcao invalida."
  end

  clear_screen
end
