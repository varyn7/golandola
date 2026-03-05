loop do
  puts "selecione uma das opções"
  puts "1-somar"
  puts "2-subtrair"
  puts "3-multiplicar"
  puts "4-dividir"
  puts "5-sair"
  puts"opção:"
  option = gets.chomp.to_i

  if option == 5
    puts "programa encerrado"
    break
  elsif option < 1 || option > 5
    puts "programa encerrado por inexistencia de opção"
    next
  end

  if option == 1
    puts "digite primeiro numero"
    num1 = gets.chomp.to_i
    puts "digite segundo numero"
    num2 = gets.chomp.to_i
    puts "esse é o resultado: #{num1 + num2}"
  elsif option == 2
    puts "digite primeiro numero"
    num3 = gets.chomp.to_i
    puts "digite segundo numero"
    num4 = gets.chomp.to_i
    puts "esse é o resultado: #{num4 - num3}"
  elsif option == 3
    puts "digite primeiro numero"
    num5 = gets.chomp.to_i
    puts "digite segundo numero"
    num6 = gets.chomp.to_i
    puts "esse é o resultado: #{num5 * num6}"
  elsif option == 4
    puts "digite primeiro numero"
    num7 = gets.chomp.to_i
    puts "digite segundo numero"
    num8 = gets.chomp.to_i
    if num8 == 0
      puts "não é possível dividir por zero"
    else
      puts "esse é o resultado: #{num7 / num8}"
    end
  end
end
