class Vampire
	attr_accessor :name, :pet 

	

	def initialize (name, pet = "bat")
		@name = name
		@pet = pet
		@thirst_count = 0 
	end

	def drink 
		@thirst_count += 1
	end

	def thirsty? 
		if @thirst_count == 0 
			true
		else
			false
		end
	end
end
