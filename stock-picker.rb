def stock_picker(array)
	stored_values = {}
	profits = []

  array.each.with_index do |current_number, current_index|
    remaining_values = array[current_index+1..array.size-1]

    remaining_values.each.with_index do |value, value_index|
      profits.push(value - current_number)
			# equation below returns the correct value index in relation to its place in the original array
      stored_values[value-current_number] = [current_index, value_index+(array.size-remaining_values.size)]
    end
	end
    
    highest_profit = profits.sort.last
    stored_values[highest_profit]
end

p stock_picker([17,3,6,9,15,8,6,1,10])