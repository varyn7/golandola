resultado = 120 * 2
puts resultado
puts "Tipo de resultado: #{resultado.class}"
# teste de exibicao de tipos primitivos dos dados
# e seus tipos primitivos em ruby 
int = 10
puts int
puts "Tipo de int: #{int.class}"

float = 20.5
puts float
puts "Tipo de float: #{float.class}"

bool = true
puts bool
puts "Tipo de bool: #{bool.class}"

bool = false
puts bool
puts "tipo de bool: #{bool.class}"

string = "Hello World"
puts string
puts "tipo de string: #{string.class}"

array = [1, 2, 3]
puts array
puts "tipo de array: #{array.class}"
puts array [0]
puts array [1]
puts array [2]

symbol = :ruby_symbol
puts symbol
puts "tipo de de symbol: #{symbol.class}"

puts symbol.object_id


hash = { course: "ruby", language: "br", local: "youtube" }
puts hash
puts "tipo de hash: #{hash.class}"
puts hash[:course]
puts hash[:language]
puts hash[:local]
