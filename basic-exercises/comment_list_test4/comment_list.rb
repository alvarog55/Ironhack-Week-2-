class CommentList
	def initialize 
		@comment_array = []
	end

	def show_array 
		@comment_array[0].to_s
	end

	def show_filtered_array
		if @comment_array[0].spamornot == false
			return @comment_array[0].comment
		else
			"".to_s
		end
	end

	def add_spam_comment(comment)
		@comment_array.push(comment)
		show_filtered_array
	end

	def add_comment_string(comment)
		@comment_array.push(comment)
		show_array
	end

	def add_comment_object(comment)
		@comment_array.push(comment)
		comment
	end

end



