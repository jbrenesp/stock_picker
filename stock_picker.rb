def stock_picker(stock)
  best_profit = 0
  best_buy = 0
  best_sell = 0
  stock.each_index do |buy_day|
    (buy_day + 1).upto(stock.length - 1) do |sell_day|
      profit = stock[sell_day] - stock[buy_day]
      if profit > best_profit
        best_profit = profit
        best_buy = buy_day
        best_sell = sell_day
      end
    end
  end
[best_buy, best_sell]
end