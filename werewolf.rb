class Werewolf

	attr_accessor :name, :location

	def initialize(name, location = "London", human = true)
		@name = name
		@location = location
		@human = human

	end

	def werewolf? 
		if @human = true 
			true
		else
			false
		end
	end

	def human?
		@human
	end

	def change!
		@human = !@human
	end

	def respond_to?(x)
		if x == :change 
			new_state = !@human
		end

		new_state != @human #returns true if changed
	end
end

werewolf = Werewolf.new("David","London")
werewolf.respond_to?(:change!)