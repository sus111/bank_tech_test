require './lib/account'

describe Account do

  describe '#initialize' do

    it 'has an initial balance of 0' do
      account = Account.new
      expect(account.balance).to eq 0
    end

  end

  describe 'add_deposit' do
    it 'adds 50 to the amount' do
      account = Account.new
      account.add_deposit(50)
      expect(account.balance).to eq 50
    end
  end

  describe 'make_withdrawal' do
    it 'should minus 50 from the account balance' do
      account = Account.new
      account.add_deposit(50)
      account.make_withdrawal(50)
      expect(account.balance).to eq 0
    end
  end

end
