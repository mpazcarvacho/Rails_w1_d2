#Desafío 2 - María Paz Carvacho

#Ejercicio 1

class Usuario
  attr_accessor :nombre, :cuentas

  def initialize(nombre, cuentas = [])
    @nombre = nombre
    @cuentas = cuentas
    
    if cuentas.empty?
      raise RangeError, "El usuario debe tener por lo menos una cuenta bancaria"
    end

  end

  def saldo_total
    
    n = cuentas.length
    saldo_total_usuario = 0

    n.times do |i|
      saldo_total_usuario += cuentas[i].saldo
    end

    puts "El saldo total del usuario #{self.nombre} es #{saldo_total_usuario.to_s}"
  end
end