class Calculator

	def add(numbers)
		return 0 if numbers.length == 0
		return numbers.to_i if numbers.length == 1
		numbers.split(",").map(&:to_i).inject(&:+)
	end

	def multiply(numbers)
		return 0 if numbers.length == 0
		return numbers.to_i if numbers.length == 1
		numbers.split(",").map(&:to_i).inject(&:*)
	end

	def power(numbers)
		return 0 if numbers.length == 0
		return numbers.to_i if numbers.length == 1
		numbers.split(",").map(&:to_i).inject(&:'**')
		numbers.split(",").map(&:to_i).inject { |sum, n| sum ** n }

	end
end


