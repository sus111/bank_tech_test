class Transaction

attr_reader :deposits, :withdrawals, :transactions

  def initialize
    @deposits = []
    @withdrawals = []
    @transactions = []
  end

  def deposit(date, amount, balance)
    @deposits << {date: date, credit: amount.round(3), balance:
    balance.round(3)}
    @transactions << {date: date, credit: amount.round(3), debit: "", balance: balance.round(3)}
  end

  def withdrawal(date, amount, balance)
    @withdrawals << {date: date, debit: amount.abs.round(2), balance: balance.round(3)}
    @transactions << {date: date, credit: "", debit: amount.abs.round(2), balance: balance.round(3)}
  end

end
