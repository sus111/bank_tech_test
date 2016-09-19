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

  def print_all
    puts "date || credit || debit || balance"
    @transactions.each do |transaction|
      print "#{transaction[:date]} || "
      print "#{transaction[:credit]} || "
      print "#{transaction[:debit]} || "
      puts "#{transaction[:balance]}"
    end
  end

  def print_deposits
    @transactions.each do |transaction|
      if transaction[:credit].is_a? Integer
        puts "date || credit"
        print "#{transaction[:date]} || "
        print "#{transaction[:credit]} "
      end
    end
  end

end
