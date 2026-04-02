puts 'digite o nome de um filme'
nome = gets.chomp

# Conta apenas letras, ignorando espacos
letras = nome.delete(' ').length

if letras <= 4
  puts 'nome curto'
elsif letras <= 8
  puts 'nome medio, logo deve ser um filmao'
else
  puts 'nome longo logo deve ser um filme ruim'
end

num1 = 22
puts num1.class

puts 'digite o ano de lancamento do filme'
yearlaunch = gets.chomp.to_i

puts yearlaunch.class

if (2000..2010).include?(yearlaunch)
  puts 'epoca boa'
else
  puts 'outra epoca'
end
