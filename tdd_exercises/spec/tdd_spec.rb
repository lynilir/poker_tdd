require 'tdd'
require 'rspec'

describe "#my_uniq" do
  it "returns an array" do
    expect(my_uniq([])).to be_an_instance_of(Array)
  end

  it "returns empty array if given empty array" do
    expect(my_uniq([])).to eq([])
  end

  it "works with strings" do
    expect(my_uniq(['a', 'b', 'a'])).to eq(['a', 'b'])
  end
  it "works with mixed types" do
    expect(my_uniq(['a', 1, :b, 1, 'b'])).to eq(['a', 1, :b, 'b'])
  end
  it "works with nested array" do
    expect(my_uniq([[1, 2], [1, 2], [1]])).to eq([[1, 2], [1]])
  end
end

describe "#two_sum" do
  let(:array) { [-1, 0, 2, -2, 1] }
  it "returns an array" do
    expect(two_sum([])).to be_an_instance_of(Array)
  end

  it "only takes integers in array" do
    expect { two_sum(['a','b'])}.to raise_error(ArgumentError)
  end

  it "returns a pair of indices that sum to 0" do
    expect(two_sum([0])).to eq([])
  end

  it "can't use same element twice" do
    expect(two_sum(array)).to eq([[0, 4], [2, 3]])
  end

  it "smaller first elements come first" do
    expect(two_sum(array)).to eq([[0, 4], [2, 3]])
  end

  it "smaller second elements come first" do
    expect(two_sum(array)).to eq([[0, 4], [2, 3]])
  end
end


describe 'Array#my_transpose' do
  let(:array) {[[0, 1, 2], [3, 4, 5], [6, 7, 8]]}
  it "returns an array" do
    expect([].my_transpose).to be_an_instance_of(Array)
  end

  it "returns an empty array if input is an empty array" do
    expect([].my_transpose).to eq([])
  end

  it "sizes stay the same" do
    expect(array.my_transpose.length).to eq(3)
  end

  it "correctly transposes" do
    expect(array.my_transpose).to eq(array.transpose)
  end
end

describe '#stock_picker' do
  let(:prices) { [40, 35, 42, 50, 29, 15] }
  it "returns an array" do
    expect(stock_picker(prices)).to be_an_instance_of(Array)
  end

  it "raise error when input array length is less than 2" do
    expect { stock_picker([1]) }.to raise_error(ArgumentError)
  end

  it "can't sell before you buy" do
    expect(stock_picker(prices)).not_to eq([5, 2])
  end

  it "returns most profitable pair" do
    expect(stock_picker(prices)).to eq([1, 3])
  end
end
