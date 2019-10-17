RSpec.describe Calculadora, type: :services do

  describe "ao instanciar" do
    it "passando a letra A e 3, o resultado deve ser uma exceção" do
      expect do 
        calculadora = Calculadora.new('A',3.0)
      end.to raise_error(StandardError, 'A primeira variavel não é um numero')
    end

    it "passando 16 e uma letra C, o resultado deve ser uma exceção" do
      expect do 
        calculadora = Calculadora.new(16.0,'C')
      end.to raise_error(StandardError, 'A segunda variavel não é um numero')
    end

    it "passando as letras A e C, o resultado deve ser uma exceção" do
      expect do 
        calculadora = Calculadora.new('A','C')
      end.to raise_error(StandardError, 'A primeira variavel não é um numero')
    end
  end

# -------------------------------------------------------------------------------------------------

  describe "ao somar" do

      it "o número 5 e 3, o resultado deve ser 8" do
        calculadora = Calculadora.new(5.0, 3.0)
        expect(calculadora.somar).to eq(8)
      end

      it "passando os numeros -15 e 8, o resultado deve ser -7" do
        calculadora = Calculadora.new(-15.0, 8.0)
        expect(calculadora.somar).to eq(-7)
      end
  end

# -------------------------------------------------------------------------------------------------

  describe "ao subtrair" do

    it "o número 156 e 134, o resultado deve ser 22" do
      calculadora = Calculadora.new(156.0, 134.0)
      expect(calculadora.diminuir).to eq(22)
    end

    it "passando os numeros -15 e 5, o resultado deve ser -20" do
      calculadora = Calculadora.new(-15.0, 5.0)
      expect(calculadora.somar).to eq(-20)
    end
  end

# -------------------------------------------------------------------------------------------------

  describe "ao dividir" do

    it "o número 12 e 6, o resultado deve ser 2" do
      calculadora = Calculadora.new(12.0, 6.0)
      expect(calculadora.dividir).to eq(2)
    end

    it "passando os numeros -15 e 5, o resultado deve ser -20" do
      calculadora = Calculadora.new(-15.0, 5.0)
      expect(calculadora.dividir).to eq(-20)
    end

    it "dividindo 18 por 0, o resultado deve ser um erro de divisão por 0" do
      expect do
        calculadora = Calculadora.new(18.0, 0)
        calculadora.dividir
      end.ro raise_error(ZeroDivisionError, 'Não é permitido dividir por 0 seu animal')
    end
  end

# -------------------------------------------------------------------------------------------

describe "ao multiplicar" do

    it "o número -2 e 4, o resultado deve ser 8" do
      calculadora = Calculadora.new(-2.0, 4.0)
      expect(calculadora.multiplicar).to eq(8)
    end

    it "passando os numeros 3 e -5, o resultado deve ser -15" do
      calculadora = Calculadora.new(3.0, -5.0)
      expect(calculadora.multiplicar).to eq(-15)
    end

    it "passando os numeros -5 e -5, o resultado deve ser 25" do
      calculadora = Calculadora.new(3.0, 5.0)
      expect(calculadora.multiplicar).to eq(25)
    end
    
  end
end