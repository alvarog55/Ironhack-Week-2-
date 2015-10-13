class RobotCage
	def initialize
		@turns = []
	end

	def add_turn(turn)
		turns.push(turn)
	end
	def start_battle
		puts "3,2,1... Fight!"
		answer_p1 = gets.chomp
		answer_p2 = gets.chomp
		process(answers)
	end

	def process(answers)
		if answer_p1 == weak && answer_p2 == weak
			first_situation
		if answer_p1 == strong && answer_p2 == weak
			second_situation
		if answer_p1 == weak && answer_p2 == strong
			third_situation
		if answer_p1 == strong && answer_p2 == strong
			fourth_situation
		if answer_p1 == definitive && answer_p2 == weak
			fifth_situation
		if answer_p1 == weak && answer_p2 == definitive
			sixth_situation
		if answer_p1 == definitive&& answer_p2 == definitive
			seventh_situation
		if answer_p1 == definitive && answer_p2 == weak
			eighth_situation
		if answer_p1 == weak && answer_p2 == definitive
			ninth_situation
		end

	end

	def attack_situation(damage)
		first_situation = first_player(-0) && second_player(-0)
		second_situation = first_player(-10) && second_player(-20)
		third_situation = first_player(-20) && second.player(-0)
		fourth_situation = first_player(-40) && second_player(-40)
		fifth_situation = first_player(-10) && second_player(-0)
		sexth_situation = first_player(-0) && second_player(-10)
		seventh_situation = puts "Both have lost"
		start_battle
		eight_situation = first_player.win1
		ninth_situation = second_player.win2
	end

	def order_turns
	turn1
	end
end

class Referee
end

class Attack
	def initialize(damage)  
		@damage = damage
		@attacks = [weak, strong, definitive]
	end

	def select_attack

	end

end

weak=Attack.new(10)
strong=Attack.new(20)
definitive=Attack.new(50)
