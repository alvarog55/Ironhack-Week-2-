require "rspec"
require_relative "./robot.rb"

RSpec.describe Calculator do
	before :all do
		@string_calc = Calculator.new
	end
	describe "#add method" do
		it "should return two numbers together when adding empty string" do
			expect(@string_calc.add("4,3")).to eq(7)
		end

		it "should return 0 when adding empty string" do
			expect(@string_calc.add("")).to eq(0)
		end

		it "should return 1 when there is only a number in the string" do
			expect(@string_calc.add("1")).to eq(1)
		end

		it "" do
			expect(@string_calc.add("1,2,3")).to eq(6)
		end

		it "" do
			expect(@string_calc.add("1,2,3,4,5")).to eq(15)
		end

	end

	describe "#multiply" do
		it "should return 0" do
			expect(@string_calc.multiply("")).to eq(0)
		end

		it "should return 1 when only there is one" do
			expect(@string_calc.multiply("1")).to eq(1)
		end
		
		it "should return all numbers together when adding a string with more than one number" do
			expect(@string_calc.multiply("1,2,3")).to eq(6)
		end

		it "should return four numbers together when adding a string with four numbers" do
			expect(@string_calc.multiply("1,2,3,5,6,7")).to eq(1260)
		end
	end

	describe "#power" do
		it "should return 0" do
			expect(@string_calc.multiply("")).to eq(0)
		end

		it "should return 1 when only there is one" do
			expect(@string_calc.multiply("1")).to eq(1)
		end
		
		it "should return all numbers together when adding a string with only two numbers" do
			expect(@string_calc.multiply("3,3")).to eq(27)
		end

		it "should return all numbers together when adding a string with more than two numbers" do
			expect(@string_calc.multiply("3,3,3")).to eq(19683)
		end

	end
end
