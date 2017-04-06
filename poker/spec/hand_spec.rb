require 'hand'

describe Hand do
  describe '#initialize' do
    it 'be array of length 5' do
      expect(Hand.new.hand.length).to eq(5)
    end
  end
end
