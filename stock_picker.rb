def stock_picker(prices)
  results = {}
  prices.map.with_index do |low_price, low_index|
    prices.map.with_index do |high_price, high_index|
      # we want to map these left to right only
      low_index < high_index && results[high_price - low_price] = [low_index, high_index]
    end
  end
  # we need to get our highest profit and return only the desired value
  output = results.max_by {|k, v| k}.flatten.pop(2)
  return output
end

p stock_picker([17,3,6,9,15,8,6,1,10])