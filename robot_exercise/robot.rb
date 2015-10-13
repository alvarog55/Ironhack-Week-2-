class Robot
	attr_accessor :health, :name
	def initialize(name, health)
		@name = name
		@health = health
	end 
end

class RobotCage
	attr_accessor :answer_p1, :answer_p2, :weak, :strong, :definitive, :first_player, :second_player, :name, :health, :batt
	def initialize
		@answer_p1 = answer_p1
		@answer_p1 = answer_p2
		@first_player = Robot.new("***BATMAN***", 100)
		@second_player = Robot.new("***JOKER***", 100)
		@weak= Attack.new
		@strong= Attack.new
		@definitive= Attack.new


	end
	def start_battle
		puts "3,2,1... Fight!"
		write_attack
	end

	def write_attack
		puts "#{@first_player.name}"
		@answer_p1 = gets.chomp
		if !(["weak", "definitive", "strong"].include?(@answer_p1))
			puts "That is not a correct attack"
			write_attack
		else
			puts "#{@second_player.name}"
			@answer_p2 = gets.chomp
			
			if !(["weak", "definitive", "strong"].include?(@answer_p2))
					puts "That is not a correct attack"
					@answer_p2 = gets.chomp

			else 
					evaluate_attacks
			end
		end		
	end

	def evaluate_current_state
		if first_player.health <= 0 
			puts "Congratulations! #{@second_player.name} wins!!"
			puts "#{@first_player.name}=> 0/ #{second_player.name}=>#{second_player.health}"
		elsif second_player.health <= 0
			puts "Congratulations! #{@first_player.name} wins!!"
			puts "#{@first_player.name}=>#{@first_player.health} / #{second_player.name}=> 0"
		else
			puts "#{@first_player.name} HEALTH=#{@first_player.health} / #{second_player.name} HEALTH=#{second_player.health}"
			write_attack
		end
	end

	def evaluate_attacks
		if @answer_p1 == "weak" && @answer_p2 == "weak"
			first_player.health -=0
			second_player.health -=0 #without effect
		elsif @answer_p1 == "strong" && @answer_p2 == "weak"
			first_player.health -=10
			second_player.health -=20 

		elsif @answer_p1 == "weak" && @answer_p2 == "strong"
			first_player.health -=20 
			second_player.health -=10
		elsif @answer_p1 == "strong" && @answer_p2 == "strong"
			first_player.health -=40 
			second_player.health -=40
		elsif @answer_p1 == "definitive" && @answer_p2 == "weak"
			first_player.health -=10 
			second_player.health -=0
		elsif @answer_p1 == "weak" && @answer_p2 == "definitive"
			first_player.health -=0 
			second_player.health -=10
		elsif @answer_p1 == "definitive" && @answer_p2 == "definitive"
			puts "Both have lost"
			puts "Try again"
			start_battle
		elsif @answer_p1 == "definitive" && @answer_p2 == "strong"
			first_player.health -=0 
			second_player.health -=500
		elsif @answer_p1 == "strong" && @answer_p2 == "definitive"
			first_player.health -=500 
			second_player.health -=0
			
		end

		evaluate_current_state
	end
end		

class Attack
	def initialize
		
	end

end

class Referee
	def initialize
	end
end


battle =RobotCage.new

battle.start_battle


