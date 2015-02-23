class Sysdata
	@name = ''
	
	# Constructor
	def initialize(name)
		if name == ''
			@name = '[null]'
		else
			@name = name  
		end
	end 
	
	# Set Username
	def setName(name)
		@name = name
	end
	
	# Get Username
	def getName()
		return @name
	end
end
