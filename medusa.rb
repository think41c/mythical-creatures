class Medusa
	attr_accessor :name, :statues

	def initialize(name)
		@name = name
		@statues = []
	end

	def stare(x)
		@statues << x
		x.status = true
	end
end

class Person
	attr_accessor :name, :status

	def initialize(name, status = false)
		@name = name
		@status = status
	end

	def stoned?
		@status
	end
end

