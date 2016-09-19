require './lib/account'

describe Transaction do

  before(:each) do
    @time_now = DateTime.now.strftime "%d/%m/%Y"
    allow(Time).to receive(:now).and_return(@time_now)
  end

  describe 'add_transaction' do
    it 'should add a deposit to transaciton with date, credit and balance' do
      transaction = Transaction.new
      transaction.add(@time_now, 50, 50)
      expect(transaction.transactions).to eq [{date: @time_now, credit: 50.0, debit:"", balance: 50.0}]
    end

    it 'should add a withdrawal to transaciton with date, withdrawal and balance' do
      transaction = Transaction.new
      transaction.add(@time_now, -50, 0)
      expect(transaction.transactions).to eq [{date: @time_now, credit: "", debit:50.0, balance: 0.0}]
    end
  end

end
