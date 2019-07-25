require_relative 'Board.rb'

class Game # Initialise le jeu #
	point_1 = 0
	point_2 = 0
	def initialize 
		puts " Bonjour, bienvenue dans le jeu du morpions "
		puts " Pour jouer à ce jeu il faut être 2 "
		puts " Appuie sur une touche pour continuer "
		gets.chomp
		puts " Quel est le nom du joueur 1 ( X )?"
		@name_1 = gets.chomp 
		puts " Quel est le nom du joueur 2 ( O )?"
		@name_2 = gets.chomp 
		puts " Ok très bien, allons y ! "
		puts "  "
		puts "#{@name_1} aura le symbol -- X -- "
		puts "#{@name_2} aura le symbol -- O --"
		puts " "
		player_1 = Player.new(@name_1,"X")
		player_2 = Player.new(@name_2,"O")
		@point_1 = 0
	  @point_2 = 0
	end

	def turn # Lance le jeu # 

	  @Board = Board.new
		finish = 1
		while finish <= 10
			puts "__________________________________"
			puts " C'est au tour de #{@name_1}"
			puts "---------------------------------"
			@Board.play_turn_j1
		  finish += 1
 			if @Board.victory? == "Joueur1"
 				finish = 100
 				@Board.show
 				break
 			end

  		if finish == 10
  	 		@Board.show
  			break 
  		end
		  puts "____________________________________"
			puts " C'est maintenant au tour de #{@name_2}"
			puts "-------------------------------------"
			@Board.play_turn_j2
			finish += 1
 			if @Board.victory? == "Joueur2"
 				finish = 200
 				@Board.show
 				break
 			end
  	end
  	if finish == 10            # Test si le match est nul et affiche le score #
  		puts " MATCH NUL "
			puts "#{@name_1} a toujours #{@point_1} point !"
  		puts "#{@name_2} a toujours #{@point_2} point !"
  		puts " Voulez vous rejouer ? y / n"
  		rejouer = gets.chomp
  		if rejouer == "y"
  			turn 
  		elsif rejouer == "n"
  			puts " Pas de soucis, bonne journée ! "
  		end
		elsif finish == 100        # si le joueur 1 a gagné #
			puts "#{@name_1} a gagné !! "
			@point_1 += 1 
			puts "#{@name_1} a #{@point_1} point !"
  		puts "#{@name_2} a #{@point_2} point !"
  		if @point_1 == 3
				puts " #{@name_1} a gagné !! #{@name_2} vous dois un café "
				exit 
	 	  end
  		puts " Voulez vous rejouer ? y / n"
  		rejouer = gets.chomp
  		if rejouer == "y"
  			turn 
  		elsif rejouer == "n"
  			puts " Pas de soucis, bonne journée ! "
  		end
  	elsif finish == 200     # si le joueur 2 a gagné # 
  		puts "#{@name_2} a gagné !! "
  		puts "  "
  		puts " Il faut avoir 3 points pour dominer votre adversaire ! "
  		puts "  "
  		@point_2 += 1
  		puts "#{@name_1} a #{@point_1} point !"
  		puts "#{@name_2} a #{@point_2} point !"
			if @point_2 == 3
				puts " #{@name_2} a gagné !! #{@name_1} vous dois un café "
			end
  		puts " Voulez vous rejouer ? y / n"
  		rejouer = gets.chomp
  			if rejouer == "y"
  				turn 
  			elsif rejouer == "n"
  				puts " Pas de soucis, bonne journée ! "
  			end
		end
	end
end

