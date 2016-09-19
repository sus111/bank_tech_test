require_relative 'transaction'
require_relative 'print'
require 'date'

class Account

attr_reader :balance, :transaction

  def initialize
    @balance = 0
    @transaction = Transaction.new
    @print = Print.new
  end

  def add_deposit(amount)
    date = DateTime.now.strftime "%d/%m/%Y"
    @balance += amount
    @transaction.add(date, amount, balance)
  end

  def make_withdrawal(amount)
    date = DateTime.now.strftime "%d/%m/%Y"
    @balance -= amount
    @transaction.add(date, amount, balance)
  end

  def print_transactions
    @print.print_all(transaction.transactions)
  end

  def print_deposits
    @print.print_deposits(transaction.transactions)
  end

end
