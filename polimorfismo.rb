class Instrumento
  def escrever
    puts 'escrevendo'

  end
  class Teclado<Instrumento
    def escrever
      puts 'escrevendo (digitando)'
    end
    class Lapis<Instrumento
      def escrever
        puts 'escrevendo'
      end
    end
    class  Caneta<Instrumento
      def escrever
        puts 'escrevendo á caneta'
      end
    end
    teclado = Teclado.new
    caneta = Caneta.new
    lapis  = Lapis.new
    puts "lapis:"
     lapis.escrever
    puts "teclado:"
     teclado.escrever
    puts "caneta:"
 caneta.escrever
  end
end