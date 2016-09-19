require 'date'
class Deposit

  attr_reader :amount, :date

  def initialize
    @time = DateTime.now
    @date = @time.strftime "%d/%m/%Y"
    @amount = 0
  end

  def add(amount)
    @amount += amount
  end

end
