puts "digite o numero do  mês que você nasceu "
month= gets.chomp.to_i
case month
when 1...3
  puts "você nasceu no começo do ano mano"
when 4...6
  puts"voce nasceu no meio do ano mano"
when 7 ...9
  puts "voce nasceu acima da metade do ano mano"
when 9...12
  puts "voce nasceu no final  do ano mano"
else
  puts "eita man não sei quando tu nasceu então"


end