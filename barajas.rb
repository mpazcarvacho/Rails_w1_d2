#Desafío2 - parte2
#María Paz Carvacho

require_relative 

class Baraja

    attr_accessor :cartas

    def initialize(cartas=[])
      @cartas = cartas

      pintas = ['C', 'T', 'D', 'E']
      13.times do |c|
        c += 1
        pintas.each do |pinta|
          puts "pinta: #{pinta}| número: #{number}"
          nueva_carta = Carta.new(pinta, i)
          nueva_carta << @cartas
        end
      end
    end

end