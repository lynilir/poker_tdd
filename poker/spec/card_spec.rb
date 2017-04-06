require 'card'

describe Card do
  describe '#initialize' do
    subject(:card) { Card.new(9, '♠') }

    it 'has instance variable suit' do
      expect(card.suit).to eq('♠')
    end

    it 'has instance variable value' do
      expect(card.value).to eq(9)
    end
  end
end
