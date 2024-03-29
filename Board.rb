class Board 
	attr_accessor :tab_case
	def initialize 
  	@A1 = BoardCase.new
  	@A2 = BoardCase.new
  	@A3 = BoardCase.new
  	@B1 = BoardCase.new
  	@B2 = BoardCase.new 
  	@B3 = BoardCase.new
  	@C1 = BoardCase.new
  	@C2 = BoardCase.new
  	@C3 = BoardCase.new
  	@victory = 0
	end



	def play_turn_j1 # Le tour du joueur 1 #
		show 
		puts " Taper le nom de la case pour y insérer votre signe."
		puts " vous avez le signe : X "
		puts " "
		puts " A1 | A2 | A3 "
		puts "--------------"
		puts " B1 | B2 | B3 "
		puts "--------------"
		puts " C1 | C2 | C3 "
		choice = gets.chomp 
		if choice == "A1"
			if @A1.fix == 0
				@A1.case_modification_j1
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j1
			end
		elsif choice == "A2"
			if @A2.fix == 0
				@A2.case_modification_j1
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j1
			end
		elsif choice == "A3"
			if @A3.fix == 0
				@A3.case_modification_j1
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j1
			end
	  elsif choice == "B1"
			if @B1.fix == 0
				@B1.case_modification_j1
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j1
			end
	  elsif choice == "B2"
			if @B2.fix == 0
				@B2.case_modification_j1
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j1
			end
	  elsif choice == "B3"
			if @B3.fix == 0
				@B3.case_modification_j1
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j1
			end
	  elsif choice == "C1"
	 		if @C1.fix == 0
				@C1.case_modification_j1
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j1
			end
	  elsif choice == "C2"
			if @C2.fix == 0
				@C2.case_modification_j1
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j1
			end
	  elsif choice == "C3"
			if @C3.fix == 0
				@C3.case_modification_j1
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j1
			end
		end
	end   

	def play_turn_j2  # Le tour du joueur 2 #
		show 
		puts " Taper le nom de la case pour y insérer votre signe."
		puts "vous avez le signe : O "
		puts " "
		puts " A1 | A2 | A3 "
		puts "--------------"
		puts " B1 | B2 | B3 "
		puts "--------------"
		puts " C1 | C2 | C3 "
		choice = gets.chomp 
		if choice == "A1"
			if @A1.fix == 0
				@A1.case_modification_j2
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j2
			end
		elsif choice == "A2"
			if @A2.fix == 0
				@A2.case_modification_j2
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 
				play_turn_j2
			end
		elsif choice == "A3"
			if @A3.fix == 0
				@A3.case_modification_j2
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j2
			end
	  elsif choice == "B1"
			if @B1.fix == 0
				@B1.case_modification_j2
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j2
			end
	  elsif choice == "B2"
			if @B2.fix == 0
				@B2.case_modification_j2
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j2
			end
	  elsif choice == "B3"
			if @B3.fix == 0
				@B3.case_modification_j2
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j2
			end
	  elsif choice == "C1"
			if @C1.fix == 0
				@C1.case_modification_j2
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j2
			end
	  elsif choice == "C2"
			if @C2.fix == 0
				@C2.case_modification_j2
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j2
			end
	  elsif choice == "C3"
			if @C3.fix == 0
				@C3.case_modification_j2
			else
				puts " Malheuresement cette case est déjà remplis... arrete de tricher !" 

				play_turn_j2
			end
	  else
	  	puts " Vous n'avez rentré aucune case valable... veuillez réessaier"
	  	play_turn_j2
		end
	end

	def show   # Affiche le plateau #
		puts " "
		puts " Voilà a quoi ressemble le plateau maintenant "
		puts "  "
		print "   "
		@A1.put 
		print " | "
		@A2.put 
		print " | "
		puts @A3.put
		puts "  -----------"
		print "   "
		@B1.put 
		print " | "
		@B2.put
		print " | "
		puts @B3.put
		puts "  -----------"
		print "   "
		@C1.put
		print " | "
		@C2.put
		print " | "
		puts @C3.put 
		puts " "
	end


	def victory?  # Permet de savoir si il y a victoire #

		if @A1.state_case == "X" && @A2.state_case == "X" && @A3.state_case == "X"
			return "Joueur1"
		elsif @A1.state_case == "X" && @B1.state_case == "X" && @C1.state_case == "X"
			return "Joueur1"
		elsif @A1.state_case == "X" && @B2.state_case == "X" && @C3.state_case == "X"
			return "Joueur1"
		elsif @C1.state_case == "X" && @B2.state_case == "X" && @A3.state_case == "X"
			return "Joueur1"
		elsif @A2.state_case == "X" && @B2.state_case == "X" && @C2.state_case == "X"
			return "Joueur1"
		elsif @A3.state_case == "X" && @B3.state_case == "X" && @C3.state_case == "X"
			return "Joueur1"
		elsif @B1.state_case == "X" && @B2.state_case == "X" && @B3.state_case == "X"
			return "Joueur1"
		elsif @C1.state_case == "X" && @C2.state_case == "X" && @C3.state_case == "X" 
			return "Joueur1"


		elsif @A1.state_case == "O" && @A2.state_case == "O" && @A3.state_case == "O"
			return "Joueur2"
		elsif @A1.state_case == "O" && @B1.state_case == "O" && @C1.state_case == "O"
			return "Joueur2"
		elsif @A1.state_case == "O" && @B2.state_case == "O" && @C3.state_case == "O"
			return "Joueur2"
		elsif @C1.state_case == "O" && @B2.state_case == "O" && @A3.state_case == "O"
			return "Joueur2"
		elsif @A2.state_case == "O" && @B2.state_case == "O" && @C2.state_case == "O"
			return "Joueur2"
		elsif @A3.state_case == "O" && @B3.state_case == "O" && @C3.state_case == "O"
			return "Joueur2"
		elsif @B1.state_case == "O" && @B2.state_case == "O" && @B3.state_case == "O"
			return "Joueur2"
		elsif @C1.state_case == "O" && @C2.state_case == "O" && @C3.state_case == "O" 
			return "Joueur2"
		end
	end
end


# Désolé pour la longueur de cette classe...c'est moche mais sa fonctionne hahaha #
