def stock_picker(stocks)

# Init an empty array for possible buy dates (low price)
low_price_index =[]

# Find the lowest possible prize in the stocks array and store its index
stocks.each_cons(2) do |a,b| 
    if a<b
        low_price_index.push(stocks.index(a))
    else
        next
    end
 end
#  p "low_price_index: #{low_price_index}"

# Compare the lowest prize array with the highest value in 
# stocks, following that initial index position

profit =[]

low_price_index.each do |value|
    highest = stocks[value..].max
    profit.push(highest-value)
end
# p "Profit: #{profit}"

# Within the profit array get the index of the max value.
# Take that index to low_price_index array, to get the index value in stocks
buy_day = low_price_index[profit.index(profit.max)]+1
buy_price = stocks[low_price_index[profit.index(profit.max)]]
gewinn = profit.max
sell_day = stocks[5]

puts "Best buy on day #{buy_day} at #{buy_price}€
and sell on day #{sell_day} for a profit of #{gewinn}€"
end



stocks=[17,3,6,9,15,8,6,1,10]
 stock_picker(stocks)



