def stock_picker(array)
    num_days = array.length
    highest_return = array[1] - array[0]
    best_buy = 0
    best_sell = 1
    new_min_index = num_days
    while true
      new_min_left = array[0..new_min_index-1].min
      new_min_index = array.find_index(new_min_left)
      max_price_right = array[new_min_index+1..num_days-1].max
      new_max_index = array.rindex(max_price_right)
      new_return = max_price_right - new_min_left
      if highest_return < new_return
        highest_return = new_return
        best_buy = new_min_index
        best_sell = new_max_index 
      end
      if new_min_index == 0
        break
      end
    end
    puts "[" + best_buy.to_s + ", " + best_sell.to_s + "] Return: " + highest_return.to_s
end