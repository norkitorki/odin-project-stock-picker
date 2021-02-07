def stock_picker(arr)
  raise ArgumentError unless arr.is_a?(Array)
  max_profit = 0
  best_days = Array.new(2)

  arr.each_with_index do |buy, i|
    arr[0...i].each_with_index do |sell, y|
      profit = buy - sell
      if profit > max_profit
        max_profit = profit
        best_days = [y, i]
      end
    end
  end

  best_days
end
