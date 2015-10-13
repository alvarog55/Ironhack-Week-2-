class Comment
	attr_accessor :comment, :spamornot

	def initialize(username, comment, spamornot)
		@username = username
		@comment = comment
		@spamornot = spamornot
	end

	def check_for_spam
		@censored_comment = @comment.gsub "http://", ""

		if @censored_comment.length < (@comment.length - 7)
			@spamornot = true
			# return true
		else
			@spamornot = false
			# return false
		end
	end

	def show_comment
		"#{username} #{comment} #{spamornot}"
	end
end
