
def stock_picker(array)
	maximo = array[0]
	minimo = array[0]
  est_min = nil
  est_max = nil 
  est_buy = nil
  est_sell = nil
	sell_day = 0
	buy_day = 0
  profit = maximo - minimo

	array.each_with_index do |x, i|

    if est_min !=nil
      if x > est_min && x - est_min > profit
        maximo = x
        sell_day = i
        minimo = est_min
        buy_day = est_buy
        profit = maximo - minimo 
        est_min = nil
        est_buy = nil
      end
    end

    if x > maximo 
      if i > buy_day
        maximo = x 
        sell_day = i
        profit = maximo - minimo
      end
    end

    if x < minimo 
      if i < sell_day
        minimo = x
        buy_day = i
        profit = maximo - minimo
      else
        est_min = x
        est_buy = i
      end
    end
  end	

  puts "The best day to buy is #{buy_day}, the best day to sell is #{sell_day}, for a profit of $#{maximo} - $#{minimo} = $#{profit}"

end



