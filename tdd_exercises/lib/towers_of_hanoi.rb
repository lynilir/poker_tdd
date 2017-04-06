class Towers
  attr_accessor :pegs

  def initialize
    @pegs = Array.new(3) { [] }
    @pegs[0] = [1, 2, 3]
  end

  def move(from, to)
    raise ("To and from must be integers") unless from.is_a?(Integer) &&
    to.is_a?(Integer)

    raise ("Must be valid peg") unless from.between?(0, 2) &&
    to.between?(0, 2)

    raise("Choose a non-empty tower") if @pegs[from].empty?

    raise("To tower can't be the same as from tower") if from == to

    start_disk = @pegs[from].first
    if @pegs[to].empty? || @pegs[to].first > start_disk
      @pegs[to].unshift(@pegs[from].shift)
    end
  end

  def won?
    @pegs[0].empty? && @pegs[1].empty? && @pegs[2] == [1, 2, 3]
  end
end
