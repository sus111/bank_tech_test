require 'date'
class Withdrawal

  attr_reader :amount, :date

  def initialize
    @time = DateTime.now
    @date = @time.strftime "%d/%m/%Y"
    @amount = 0
  end

  def minus(amount)
    @amount -= amount
  end

end
