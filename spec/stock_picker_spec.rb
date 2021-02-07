require '../stock_picker.rb'

daily_stocks        = [17, 3, 6, 9, 15, 8, 6, 1, 10]
daily_stocks_floats = [17.5, 3.3, 6.3, 9.9, 15.2, 8.5, 6.9, 1.1, 10.0]

describe "#stock_picker" do
  it "works with integer values" do
    expect(stock_picker(daily_stocks)).to eq([1, 4])
  end

  it "works with floating point values" do
    expect(stock_picker(daily_stocks_floats)).to eq([1, 4])
  end
end
