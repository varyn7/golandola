module Person
  class Juridic
    def initialize(nome, cnpj)
      @nome = nome.to_s.strip
      @cnpj = cnpj.to_s.strip
    end

    def add
      "Pessoa juridica adicionada: nome=#{@nome}, cnpj=#{@cnpj}"
    end
  end

  class Physical
    def initialize(nome, cpf)
      @nome = nome.to_s.strip
      @cpf = cpf.to_s.strip
    end

    def add
      "Pessoa fisica adicionada: nome=#{@nome}, cpf=#{@cpf}"
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  puts Person::Juridic.new("m.c.investimentos", "4241.123/0001").add
end
