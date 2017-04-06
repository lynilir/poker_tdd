require 'deck'

describe Deck do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it "create an array" do
      expect(deck.deck).to be_an_instance_of(Array)
    end

    it "has 52 cards" do
      expect(deck.deck.length).to eq(52)
    end

  end

  describe "#shuffle!" do
    it "shuffles an array" do
      orig_deck = deck.deck.dup
      deck.shuffle!
      expect(deck.shuffle!).not_to eq(orig_deck)
    end
  end
end
