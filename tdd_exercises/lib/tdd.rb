def my_uniq(arr)
  result = []
  arr.each do |el|
    result << el unless result.include?(el)
  end

  result
end

def two_sum(arr)
  raise ArgumentError unless arr.all? { |el| el.is_a?(Integer) }

  result = []
  (0...arr.length - 1).each do |i|
    (i + 1...arr.length).each do |j|
      result << [i, j] if arr[i] + arr[j] == 0
    end
  end

  result
end

class Array
  def my_transpose
    result = Array.new(self.length) { [] }
    self.length.times do |i|
      self.length.times do |j|
        result[i][j] = self[j][i]
      end
    end

    result
  end
end

def stock_picker(arr)
  raise ArgumentError if arr.length < 2

  most_profitable = []
  highest_profit = 0

  (0...arr.length - 1).each do |i|
    (i + 1...arr.length).each do |j|
      if arr[j] - arr[i] > highest_profit
        highest_profit = arr[j] - arr[i]
        most_profitable = [i, j]
      end
    end
  end

  most_profitable
end
