class Fizzbuzz
	def show(number)
		result = ""
		if number % 3 == 0 && number % 5 == 0
			result +="fizzbuzz"

		elsif number % 5 == 0
			result +="buzz"

		elsif number % 3 == 0
			result +="fizz"

		else
			result

		end	
	end
end	