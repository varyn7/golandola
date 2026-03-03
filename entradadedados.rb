print "digite seu nome"
#recebendo a entrada de dados do teclado #


name = gets.chomp
print "digite seu sobrenome  "
sobrenome = gets.chomp

puts "hello #{name} #{sobrenome}!"

#pequeno exercicio de calculo aditivo

print "digite seu numero inteiro"
numero1 = gets.chomp.to_i
print "digite seu numero2  "
numero2 = gets.chomp.to_i
addition = numero1 + numero2
puts "o resultado é: #{addition}"

#de outra maneira realizada o exercicio
num1 = 22
num2 = 22
puts "o resultado é:  #{num1+num2}"

#exercicio cotidiano
nom = "fulano"
idade = "10 anos"


puts "seu nome e idade é:#{nom} #{idade}"
