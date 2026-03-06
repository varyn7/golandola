estados=[]
estados.push('CE')
estados.push('RS')
estados.push('ES','RJ','RN')
estados.insert(0,'acre')
estados.insert(4,'am')

puts estados
puts"abaixo os estados 1 e 2"
puts estados [1..2]
puts "abaixo o numero de estados :"
puts estados.count
puts "não tem estados?"
puts estados.empty?
puts "numero de cidades abaixo:"

cidades=[]
cidades.push('B')
puts cidades
puts cidades.count
puts "não tem cidades?"
puts cidades.empty?
puts "CE está incluido?"
puts estados.include?('CE')
 estados.delete('RJ')
puts estados