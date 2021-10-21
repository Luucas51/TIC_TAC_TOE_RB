class Board
include Enumerable
attr_accessor :tic_tac_case
# initialize l'affichage du morpion
  def initialize
    @a1 = BoardCase.new    @a1 = 0
    @a2 = BoardCase.new    @a2 = 1
    @a3 = BoardCase.new    @a3 = 2
    @b1 = BoardCase.new    @b1 = 3
    @b2 = BoardCase.new    @b2 = 4
    @b3 = BoardCase.new    @b3 = 5
    @c1 = BoardCase.new    @c1 = 6
    @c2 = BoardCase.new    @c2 = 7
    @c3 = BoardCase.new    @c3 = 8



    @tic_tac_case = [@a1, @a2, @a3, @b1, @b2, @b3, @c1, @c2, @c3]
  end
#affichage tableau par défaut
  def to_s 
    puts "-------------"
    puts "| #{tic_tac_case[0]} | #{tic_tac_case[1]} | #{tic_tac_case[2]} |"
    puts "-------------"
    puts "| #{tic_tac_case[3]} | #{tic_tac_case[4]} | #{tic_tac_case[5]} |"
    puts "-------------"
    puts "| #{tic_tac_case[6]} | #{tic_tac_case[7]} | #{tic_tac_case[8]} |"
    puts "-------------"

  end
# comme le nom l'indique "play game et corrige si le joueur entre une case déjà prise"
  def play_game(player, valeur)
    puts "#{player.player_name} tape le chiffre de la case ou tu souhaites jouer"
    place = gets.chomp.to_i
    if @tic_tac_case[place] != "X" && @tic_tac_case[place] != "0"
       @tic_tac_case[place] = valeur
    else puts "Merci de jouer une case valide"
    end
  end
# condition pour gagner (pas facile à faire) petite ressource en C qui ma aider https://forums.commentcamarche.net/forum/affich-12287013-morpion-en-c
  def winner
    if  @tic_tac_case[0] == @tic_tac_case[1] && @tic_tac_case[1] == @tic_tac_case[2] ||
        @tic_tac_case[3] == @tic_tac_case[4] && @tic_tac_case[4] == @tic_tac_case[5] ||
        @tic_tac_case[6] == @tic_tac_case[7] && @tic_tac_case[7] == @tic_tac_case[8] ||
        @tic_tac_case[0] == @tic_tac_case[3] && @tic_tac_case[3] == @tic_tac_case[6] ||
        @tic_tac_case[1] == @tic_tac_case[4] && @tic_tac_case[4] == @tic_tac_case[7] ||
        @tic_tac_case[2] == @tic_tac_case[5] && @tic_tac_case[5] == @tic_tac_case[8] ||
        @tic_tac_case[0] == @tic_tac_case[4] && @tic_tac_case[4] == @tic_tac_case[8] ||
        @tic_tac_case[2] == @tic_tac_case[4] && @tic_tac_case[4] == @tic_tac_case[6] 
        true
    else 
      false
    end
  end
end

#if  @tic_tac_case[1] == @tic_tac_case[2] && @tic_tac_case[2] == @tic_tac_case[3] ||
#  @tic_tac_case[4] == @tic_tac_case[5] && @tic_tac_case[5] == @tic_tac_case[6] ||
#  @tic_tac_case[7] == @tic_tac_case[8] && @tic_tac_case[8] == @tic_tac_case[9] ||
 # @tic_tac_case[1] == @tic_tac_case[4] && @tic_tac_case[4] == @tic_tac_case[7] ||
 # @tic_tac_case[2] == @tic_tac_case[5] && @tic_tac_case[5] == @tic_tac_case[8] ||
 # @tic_tac_case[3] == @tic_tac_case[6] && @tic_tac_case[6] == @tic_tac_case[9] ||
 #""" @tic_tac_case[1] == @tic_tac_case[5] && @tic_tac_case[5] == @tic_tac_case[9] ||
# "" @tic_tac_case[3] == @tic_tac_case[5] && @tic_tac_case[5] == @tic_tac_case[7] 