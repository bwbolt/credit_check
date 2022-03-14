require 'rspec'
require './lib/credit_card'

RSpec.describe CreditCard do
  context 'using fake credit card' do
    before(:each) do
      @credit_card = CreditCard.new('5541808923795240', 15_000)
    end

    it 'Creates a new card instance' do
      expect(@credit_card.card_number).to eq('5541808923795240')
    end

    it 'Can access the card limit' do
      expect(@credit_card.limit).to eq(15_000)
    end

    it 'Can access the last four digits of the card number' do
      expect(@credit_card.last_four).to eq('5240')
    end

    it 'Can verify the card' do
      expect(@credit_card.is_valid?).to eq(true)
    end
  end
end
