
class Wizard
	def initialize(name, bearded: true)
		@name = name
		@bearded = bearded
	end

	def name
		@name
	end

	def bearded? 
		@bearded
	end

	def incantation(spell)
		#adds "sudo " to all spells
		"sudo #{spell}"
	end


end

wizard = Wizard.new("Eric")
puts wizard.bearded?