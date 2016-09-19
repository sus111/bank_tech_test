require_relative 'deposit'
require_relative 'withdrawal'
require_relative 'transaction'

class Account

attr_reader :balance, :transaction

  def initialize
    @balance = 0
    @transaction = Transaction.new
  end

  def add_deposit(amount)
    deposit = Deposit.new
    deposit.add(amount)
    @balance += deposit.amount
    @transaction.add(deposit.date, deposit.amount, balance)
  end

  def make_withdrawal(amount)
    withdrawal = Withdrawal.new
    withdrawal.minus(amount)
    @balance += withdrawal.amount
    @transaction.add(withdrawal.date, withdrawal.amount, balance)
  end

  def print_transactions
    @transaction.print_all
  end

  def print_deposits
    @transaction.print_deposits
  end

end
