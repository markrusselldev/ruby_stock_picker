def stock_picker(prices)
  results = {}
  prices.map.with_index do |low_price, low_idx|
    prices.map.with_index do |high_price, high_idx|
      # we want to map these left to right only
      low_idx < high_idx && results[high_price - low_price] = [low_idx, high_idx]
    end
  end
  # we need to get our highest profit and return only the desired values array
  output = results.max_by { |k, v| k }.flatten.pop(2)
  return output
end

p stock_picker([17,3,6,9,15,8,6,1,10])