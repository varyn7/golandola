time=Time.now
puts time
#exibição de classe da função
puts time.class
#puxando informação especifica usando a função
puts time.year
puts time.month
puts time.day
puts time.hour
puts time.min
puts time.sec
#teste de formatação usando== time
puts  time.strftime("%Y-%m-%d %H:%M:%S")
#puxando data especifica
puts time.tuesday?
#comparação de tempo
time2 = Time.now
time==time2
puts time2
time.year==time2.year
puts time.year==time2.year