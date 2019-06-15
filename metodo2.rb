module Formula
   def perimetro(a, b)
       2*(a+b)
   end

   def area(a, b)
       a*b
   end
end

class Rectangulo
   attr_accessor :largo, :ancho
   include Formula
   def initialize(largo, ancho)
       @largo = largo
       @ancho = ancho
   end
   def lados
       print "#{@largo} , #{ancho}"
   end
end
class Cuadrado
   attr_accessor :lado
   include Formula
   def initialize(lado)
     @lado = lado
   end
   def lados
       print "#{@lado}"
   end
end
r1 = Rectangulo.new(3, 5)
c1 = Cuadrado.new(2)
puts "El perimetro del Rectangulo es :#{r1.perimetro(r1.largo.to_i, r1.ancho.to_i)}"
puts "El area de un Rectangulo es : #{r1.area(r1.largo, r1.ancho)}"
puts "El perimetro del Cuadrado es :#{c1.perimetro(c1.lado.to_i, c1.lado.to_i)}"
puts "El area de un Cuadrado es : #{c1.area(c1.lado, c1.lado)}"
