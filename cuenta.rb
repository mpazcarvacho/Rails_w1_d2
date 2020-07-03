#Desafío2
#María Paz Carvacho

class CuentaBancaria
  attr_accessor :banco, :numero_de_cuenta, :saldo

  def initialize(banco, numero_de_cuenta, saldo = 0)
    @banco = banco
    @numero_de_cuenta = numero_de_cuenta
    @saldo = saldo
  end

  def to_s
    puts "banco: #{banco} | nro cuenta: #{numero_de_cuenta} | saldo: #{saldo}"
  end

  def transferir(monto, cuenta)

    cuenta.saldo = cuenta.saldo + monto
    self.saldo -= monto

  end

end