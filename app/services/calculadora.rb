class Calculadora

   attr_reader :valor1, :valor2

   def initialize(valor1, valor2)
      raise StandardError, 'A primeira variavel não é um numero' if !valor1.is_a? Float
      raise StandardError, 'A primeira variavel não é um numero' if !valor2.is_a? Float


      @valor1 = valor1
      @valor2 = valor2
   end

   def self.somar(valor1, valor2)
      new(valor1, valor2).somar
   end

   def self.diminuir(valor1, valor2)
      new(valor1, valor2).diminuir
   end

   def self.dividir(valor1, valor2)
      new(valor1, valor2).dividir
   end

   def self.multiplicar(valor1, valor2)
      new(valor1, valor2).multiplicar
   end

   def somar(valor1, valor2)
      @valor1 + @valor2
   end

   def diminuir(valor1, valor2)
      @valor1 - @valor2
   end

   def dividir(valor1, valor2)
      raise ZeroDivisionError, 'Não é permitido dividir por 0 seu animal' if @valor2 == 0

      @valor1 / @valor2
   end

   def multiplicar(valor1, valor2)
      @valor1 * @valor2
   end
end