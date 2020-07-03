#Desafío2 - PARTE 1
#María Paz Carvacho

require_relative './usuario.rb'
require_relative './cuenta.rb'


#4. Probar creando dos cuentas cada una con un saldo de 5000 y transferir el total de una cuenta a
#la otra.

cuenta3 = CuentaBancaria.new('Scotiabank',127,5000)
cuenta4 = CuentaBancaria.new('bci',128,5000)

puts "Saldo previo"
cuenta3.to_s
cuenta4.to_s

cuenta3.transferir(cuenta3.saldo, cuenta4)

puts "Saldo post-transferencia"
cuenta3.to_s
cuenta4.to_s

cuenta5 = CuentaBancaria.new('bci',128,5000)

usuario1 = Usuario.new('Mpaz', [cuenta3, cuenta4, cuenta5])


usuario1.saldo_total

#Probando que el usuario debe recibir por lo menos una cuenta

usuario2 = Usuario.new('J')