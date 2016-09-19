require_relative 'transaction'
require 'date'
class Account

attr_reader :balance, :transaction

  def initialize
    @balance = 0
    @transaction = Transaction.new
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
    @transaction.print_all
  end

  def print_deposits
    @transaction.print_deposits
  end

end
