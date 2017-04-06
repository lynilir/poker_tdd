require 'towers_of_hanoi'
require 'rspec'

describe Towers do

  describe "#initialize" do
    subject(:towers) { Towers.new }
    it "initializes an array of length 3" do
      expect(towers.pegs.length).to eq(3)
    end

    it "each element is an array" do
      expect(towers.pegs.all? { |peg| peg.is_a?(Array) }).to be true
    end

    it "first tower correctly set up" do
      expect(towers.pegs.first).to eq([1, 2, 3])
    end

    it "tower 2 and tower 3 need to be empty" do
      expect(towers.pegs[1]).to be_empty
      expect(towers.pegs[2]).to be_empty
    end
  end

  describe "#move" do
    subject(:towers) { Towers.new }
    let(:towers2) { Towers.new }
    it "raises an error if to and from aren't integers" do
      expect { towers.move('a','b') }.to raise_error("To and from must be integers")
    end

    it "raises an error if both integers aren't between 0-2" do
      expect { towers.move(0, 5) }.to raise_error("Must be valid peg")
    end

    it "raise an error if from tower is empty" do
      towers2.move(0, 1)
      expect { towers2.move(2, 1) }.to raise_error("Choose a non-empty tower")
    end

    it "raise an error if from tower is the same as to tower" do
      expect { towers.move(0, 0) }.to raise_error("To tower can't be the same as from tower")
    end

    it "move doesn't result in unsorted tower" do
      towers.move(0, 1)
      towers.move(0, 2)
      expect(towers.pegs.all? { |peg| peg == peg.sort }).to be true
    end
  end

  describe "won?" do
    subject(:towers) { Towers.new }

    it "towers 1 and 2 need to be empty" do
      towers.pegs[0] = []
      towers.pegs[2] = [1, 2, 3]
      expect(towers.pegs[0]).to be_empty
      expect(towers.pegs[1]).to be_empty
      expect(towers.won?).to be true
    end
  end

end
