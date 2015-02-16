class Centaur
	attr_accessor :name, :breed, :energy_points

	def initialize(name, breed)
		@name = name
		@breed = breed		
		@energy_points = 0
		@stand_status = 0  #1 means laying, 0 means standing.
		# stand_status = true
	end

	def shoot
		@energy_points += 1
		if cranky? == false && @stand_status == 0
			"Twang!!!"
		else
			"NO!"
		end
	end

	def run
		@energy_points += 1 
		if cranky? == false && @stand_status == 0 
			"Clop clop clop clop!!!"
		else
			"NO!"
		end
	end

	def cranky?
		if @energy_points < 3 
			false
		else 
			true
		end	
	end

	def standing? 
		# @stand_status
		if @stand_status == 0 then
			true
		else 
			false
		end
	end

	def laying?
		if @stand_status == 0 then
			false
		else
			true
		end
	end

	def lay_down
		if @stand_status == 0 then
			@stand_status = 1
		else
			@stand_status = 0 
		end
	end

	def stand_up
		@stand_status = 0
	end

	def sleep
		if standing? == true 
			"NO!" 
		else
			"Snoozy kitten!"
			@energy_points = 0 			
		end
  end

	# def respond_to?(x)
	# 	if x == :lay_down
	# 		true
	# 	else
	# 		false
	# 	end
	# end

end


