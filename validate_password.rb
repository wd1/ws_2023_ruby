class ValidatePassword
	def initialize(password = '')
	    @password = password
	end
	def perform
	    if @password =~/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%&*+=:;?<>])[A-Za-z\d!@#$%&*+=:;?<>]{6,24}$/
	    	if @password.match?('((.)\2{2,})')
	    		false
	    	else
	    		true
	    	end
	    else
	     	false
	    end 
	end
end
