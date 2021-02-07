def stock_picker(arr)
  raise ArgumentError unless arr.is_a?(Array)
  max_profit = 0
  best_days = Array.new(2)

  arr.each_with_index do |sell, i|
    arr[0...i].each_with_index do |buy, y|
      profit = sell - buy
      if profit > max_profit
        max_profit = profit
        best_days = [y, i]
      end
    end
  end

  best_days
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
