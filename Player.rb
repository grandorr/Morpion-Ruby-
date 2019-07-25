class Player 
attr_reader :name, :value
	def initialize(name_to_save, value_to_save)	
		@name = name_to_save
		@value = value_to_save
	end

	def show_score
		puts "#{@name} a #{@point} point."
	end




end