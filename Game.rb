require_relative 'Board.rb'
point_1 = 0
point_2 = 0
class Game 
	def initialize
	puts " Bonjour, bienvenue dans le jeu du morpions "
	puts " Pour jouer à ce jeu il faut être 2 "
	puts " Appuie sur une touche pour continuer "
	gets.chomp
	puts " Quel est le nom du joueur 1 ( X )?"
	@name_1 = gets.chomp 
	puts " QUel est le nom du joueur 2  ( O )?"
	@name_2 = gets.chomp 
	puts " Ok très bien, allons y ! "
	puts "  "
	puts "#{@name_1} aura le symbol -- X -- "
	puts "#{@name_2} aura le symbol -- O --"
	puts " "
	player_1 = Player.new(@name_1,"X")
	player_2 = Player.new(@name_2,"O")
	end

	def turn
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
  if finish == 10
  	puts " MATCH NUL "
	elsif finish == 100
		puts "#{@name_1} a gagné !! "
  	puts " Voulez vous rejouer ? y / n"
  	rejouer = gets.chomp
  	if rejouer == "y"
  		turn 
  	elsif rejouer == "n"
  		puts " Pas de soucis, bonne journée ! "
  	end
  elsif finish == 200
  	puts "#{@name_2} a gagné !! "
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

