#Desafío 2 - parte 2
#María Paz Carvacho

class Carta

  attr_accessor :numero, :pinta

  def initialize(numero, pinta)
    @numero = numero
    @pinta = pinta
  end

  def to_s
    "pinta: #{pinta}| número: #{numero}"
  end

end
