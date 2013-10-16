# Implementar en este fichero la clase para crear objetos racionales

require "./gcd.rb"

class Fraccion
   attr_reader :num, :den

   def initialize (num, den)
    @num, @den = num, den
  end
  
  def to_s
    "#{@num}/#{@den}"
  end

  def +(other)
    num = (@num * other.den) + (@den * other.num)
    den = @den * other.den
    sum = Fraccion.new(num, den)
    sum
  end
  
  def -(other)
    num = (@num * other.den) + (@den * other.num)
    den = @den * other.den
    sum = Fraccion.new(num, den)
    sum
  end

 def *(other)
    num = @num * other.den
    den = @den * other.num
    sum = Fraccion.new(num, den)
    sum
  end

 def div(other)
    num = @num * other.num
    den = @den * other.den
    sum = Fraccion.new(num, den)
    sum
  end

end

#r1 = Fraccion.new(1, 2)
#puts "r1 = #{r1}"
