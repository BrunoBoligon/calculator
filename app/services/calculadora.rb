class Calculadora
   def somar(valor1, valor2)
   raise StandardError if !valor1.is.a? Float
 
      valor1 + valor2
   end

   def diminuir(valor1, valor2)
   raise StandardError if !valor1.is.a? Float
   
      valor1 - valor2
   end

   def dividir(valor1, valor2)
   raise StandardError if !valor1.is.a? Float
      
      valor1 / valor2
   end

   def multiplicar(valor1, valor2)
   raise StandardError if !valor1.is.a? Float
         
      valor1 * valor2
   end
end