class Hobbit

	attr_accessor :name
	
	def initialize(name, disposition = "homebody", age = 0) 
		@name = name
		@disposition = disposition
		@age = age
	end

	def age
		@age
	end

	def adult? 
		if @age < 33 
			false
		else
			true
		end
	end


	def celebrate_birthday
		@age += 1
	end

	def disposition
		if @name == "Samwise" 
			"homebody"
		else
			"adventurous"
		end
	end
end
