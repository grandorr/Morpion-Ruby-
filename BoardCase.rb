class BoardCase 
attr_accessor :state_case
	def initialize
		@state_case = "."
		@fix = 0
  end

  def case_modification_j1
  	@state_case = "X"
  	@fix = 1
	end

	def case_modification_j2
		@state_case = "O"
		@fix = 1
	end

	def fix
	return @fix
	end

	def put
  print @state_case
	end

end



