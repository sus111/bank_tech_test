class Sort

  def ascending(transactions)
    transactions.sort_by! { |transaction| transaction[:date]}
  end

  def descending(transactions)
    self.ascending(transactions).reverse
  end

end
