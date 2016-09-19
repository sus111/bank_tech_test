class Print

  def print_out(transactions)
    puts "date || credit || debit || balance"
    transactions.each do |transaction|
      print "#{transaction[:date]} || "
      print "#{transaction[:credit]} || "
      print "#{transaction[:debit]} || "
      puts "#{transaction[:balance]}"
    end
  end

end
