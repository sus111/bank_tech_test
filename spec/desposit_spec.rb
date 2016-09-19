require './lib/account'

describe Deposit do

  before(:each) do
    @time_now = DateTime.now.strftime "%d/%m/%Y"
    allow(Time).to receive(:now).and_return(@time_now)
  end

  describe '#initialize' do

    it 'sets the current date' do
      deposit = Deposit.new
      expect(deposit.date).to eq @time_now
    end

    it 'has an initial amount of 0' do
      deposit = Deposit.new
      expect(deposit.amount).to eq 0
    end

  end

  describe 'add' do
    it 'adds 50 to the amount' do
      deposit = Deposit.new
      deposit.add(50)
      expect(deposit.amount).to eq 50
    end
  end


end
