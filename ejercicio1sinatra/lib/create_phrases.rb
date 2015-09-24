class AdderPhrase
	attr_accessor :phrases
	def initialize
		@phrases = [
 			'I like pie.',
 			'Add some of your own phrases here.',
 			'Make sure to follow all but the last phrase with a comma.',
 			'My mother is the best',
 			'I have not email',
 			'I live in my garden'
 		]
	end

	def add_phrase(phrase)
		@phrases.push(phrase)
	end

	def random_do
		@phrases[rand(@phrases.length)]
	end

end


