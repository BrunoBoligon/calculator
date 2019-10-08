RSpec.describe Calculadora, type: :services do
    describe "ao somar" do
      it "o número 5 e 3, o resultado deve ser 8" do
       calculadora = Calculadora.new
        expect (calculadora.somar(5,3)).to eq(8)
      end

      it "passano A e 3, o resultado deve ser uma exceção"
      calculadora = Calculadora.new
        expect (calculadora.somar('A',3)).to eq(8)
      end
    end
  end