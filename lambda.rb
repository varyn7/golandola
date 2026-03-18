5.times {puts "exec the block "}

sum= 0
numbers= [5,10,5]
numbers.each {|number| sum+=number}
puts sum




#block de multiplas linhas
foo={2=>3,4 => 5}
foo.each do |key,value|
  puts "key= #{key}"
  puts "value= #{value}"
  puts "key*value= #{key*value}"
  puts '___'

end





#outro tipo de block
def foo
  #call the block
  yield  #termo usado para chamada do bloco
  yield
end
foo do
  puts"exec the block"
  puts "o bloco foi executado "
end



#forma de verificar se o bloco foi repassado
def foo
  if block_given?
    yield
  else
    puts "sem parametro repassado do tipo block "
  end
end
foo
foo {puts "com parametro do tipo block "}


#passando o bloco por parametros
def foo (name, &block)
  @name = name
  block.call
end
foo ("joão") {puts "hello  #{@name}"}




#bloco de multiplas linhas feito por parametro
def foo (numbers, &block)
  if block_given?
    numbers.each do  |key,value|
      block.call(key, value)
    end
  end

end
numbers= {2=>2, 3=>3, 4=>4}
foo numbers do |key,value|
  puts "#{key} * #{value}= #{key*value}"
  puts "#{key} + #{value} = #{key + value}"
  puts '___'
end

#lambda exemplar de calculo 

my_lambda = lambda do |numbers|
  puts "numero atual + proximo numero"
  numbers.each_index do |index|
    break if index == numbers.length - 1

    puts "(#{numbers[index]}) + (#{numbers[index + 1]})"
    puts numbers[index] + numbers[index + 1]
  end
  end