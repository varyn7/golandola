# frozen_string_literal: true

class Animal
  def pular
    puts 'toioioioing'
  end

  def dormir
    puts 'zzzzzzz'
  end
end

class Cachorro < Animal
  def latir
    puts 'auauauaua'
  end
end
class Gato<Animal
  def meow
    puts 'meow'
  end
end
cachorro = Cachorro.new
cachorro.latir
cachorro.pular
cachorro.dormir
