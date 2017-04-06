class Deck
  SUITS = ['♣', '♦', '♥', '♠']

  attr_reader :deck

  def initialize
    @deck = []
    populate
    # @deck.shuffle!
  end

  def shuffle!
    @deck.shuffle!
  end
  
  private

  def populate
    SUITS.each do |suit|
      (2..14).each do |value|
        @deck << Card.new(value, suit)
      end
    end
  end
end
