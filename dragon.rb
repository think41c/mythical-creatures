class Dragon	
	def initialize(name, color, rider)
		@name = name
		@color = color
		@rider = rider
		@bones_eaten = 0
	end

	def name
		@name
	end

	def rider
		@rider
	end

	def color
		@color
	end

	def hungry? 
		if @bones_eaten < 3
			hungry = true
		else
			hungry = false
		end
	end

	def eat
		@bones_eaten += 1
		puts "nom nom"
	end


end
