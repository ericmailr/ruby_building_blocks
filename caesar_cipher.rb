puts "Enter the string to be encrypted: "
string = gets.strip
puts "Enter the shift factor: "
shift_factor = gets.to_i % 26
print "Encrypted string: "

string.split("").each do |c|
	if (c =~/\d/) 
		print (c.to_i + shift_factor) % 10	
	elsif (c =~ /\w/)
		is_capital = (65..90).include?(c.ord)
		new_c = c.ord + shift_factor
		if (is_capital && new_c > 90)
			new_c -= 26
		end
		if (!is_capital && new_c > 122)
			new_c -= 26
		end
		print new_c.chr
	else print c
	end
end
