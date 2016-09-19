class Print

  def print_all(transactions)
    puts "date || credit || debit || balance"
    transactions.each do |transaction|
      print "#{transaction[:date]} || "
      print "#{transaction[:credit]} || "
      print "#{transaction[:debit]} || "
      puts "#{transaction[:balance]}"
    end
  end

  def print_deposits(transactions)
    transactions.each do |transaction|
      if transaction[:credit].is_a? Integer
        puts "date || credit"
        print "#{transaction[:date]} || "
        print "#{transaction[:credit]} "
      end
    end
  end

end
