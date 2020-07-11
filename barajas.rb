#Desafío2 - parte2
#María Paz Carvacho

require_relative "./carta.rb"

class Baraja

    attr_accessor :cartas

    def initialize(cartas=[])
      @cartas = cartas

      pintas = ['C', 'T', 'D', 'E']
      13.times do |numero|
        numero += 1
        pintas.each do |pinta|
          puts "Baraja creada: pinta: #{pinta}| número: #{numero}"
          nueva_carta = Carta.new(numero, pinta)
          @cartas.push(nueva_carta)
        end
      end
    end

  def barajar
    @cartas = self.cartas.shuffle
  end

  def sacar
    self.cartas.shift
  end

  def repartir_mano
    self.cartas.shift(5)
  end

end

baraja1 = Baraja.new()

puts "Baraja mezclada:" #Añadí esto de este modo para que no se mostrarán los ids de las cartas
puts baraja1.barajar
puts "Primera carta"
puts baraja1.sacar
puts "Primeras 5 cartas"
puts baraja1.repartir_mano