class BoardCase 
	attr_accessor :state_case
	def initialize
		@state_case = "."
		@fix = 0
  end

  def case_modification_j1  # Modifie la case pour y mettre X 
  	@state_case = "X"
  	@fix = 1
	end

	def case_modification_j2 # Modifie la case pour y mettre O
		@state_case = "O"
		@fix = 1
	end

	def fix # Permet de savoir si un case a déja été remplis ou non #
		return @fix
	end

	def put
  	print @state_case
	end

end



