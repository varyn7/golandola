class User
  def add(name)
    @name = name
    puts "user adicionado"
  end

  def hello
    puts "seja bem vindo #{@name}"
  end
end

user = User.new
user.add("joao")
user.hello
