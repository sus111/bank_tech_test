class Transaction

attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add(date, amount, balance)
    if amount > 0
      @transactions << {date: date, credit: amount.round(3), debit: "", balance:
        balance.round(3)}
    else
      @transactions << {date: date, credit: "", debit: amount.abs.round(2), balance:
        balance.round(3)}
    end
  end

end
