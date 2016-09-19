require './lib/account'

describe Transaction do

  before(:each) do
    @time_now = DateTime.now.strftime "%d/%m/%Y"
    allow(Time).to receive(:now).and_return(@time_now)
  end

  describe 'deposit' do

    it 'should add a deposit to deposits with date, credit and balance' do
      transaction = Transaction.new
      transaction.deposit(@time_now, 50, 50)
      expect(transaction.deposits).to eq [{date: @time_now, credit: 50.0, balance: 50.0}]
    end

  end

  describe 'withdrawal' do

    it 'should add a withdrawal to withdrawals with date, withdrawal and balance' do
      transaction = Transaction.new
      transaction.withdrawal(@time_now, -50, 0)
      expect(transaction.withdrawals).to eq [{date: @time_now,
        debit:50.0, balance: 0.0}]
    end


  end

end
