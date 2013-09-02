=begin

Pseudo code 

Steps
1. Take in the amount of money from the user in cents 
2. Create a method that will take in the inputted parameter
3. Run that parameter through a series of logic statements
4. Logic will work like so:
	1) if the input amount is greater than 100, divide that amount by 100 cents,
		increase the one dollar amount by the frequency. Decrease overall cents by
		the originally inputted amount. 
	2) Take the remaining amount and run the same inputted amount through quarters
		dimes, nickels, and pennies
4. Print out how many dollars and change there are using interpolation 

=end



def awesome_change(change)

	change_hash = {
		Dollar: 100,
		Quarter: 25,
		Dime: 10,
		Nickel: 5,
		Penny: 1
	}

	final_amounts = {}

	change_hash.each do |money_type, value|
		quantity, change = change.divmod(value)
		final_amounts[money_type] = quantity
	end

	final_amounts

end



p awesome_change(126)
# puts awesome_change(126).tuan_says













# def dollar_conversion(change)

# 	while change > 0
# 		if change >= 100
# 			dollars, change = change.divmod(100)
# 			#find the divmod
# 			#take change amount divide it by 100
# 			#add to dollar based on quotient
# 			#set the change amount to the remaining change
# 		elsif 
# 			change >= 25 
# 			quarters, change = change.divmod(25)

# 		elsif 
# 			change >= 10 
# 			dimes, change = change.divmod(10)

# 		elsif 
# 			change >= 5
# 			nickels, change = change.divmod(5)

# 		elsif 
# 			change >= 1
# 			pennies, change = change.divmod(1)
# 		end
# 	end


# 	"You have #{dollars} dollars, #{quarters} quarters, #{dimes} dimes, #{nickels} nickels, and #{pennies} pennies"

# end

# # puts "Welcome to Coin Star, please input how much change you have"
# # input = gets.chomp.to_i
# p dollar_conversion(579)
# p dollar_conversion(579) == "You have 5 dollars, 3 quarters, 0 dimes, 0 nickels, and 4 pennies"
# # array = ["a", "b", "c"]
# # puts array
# # p array






