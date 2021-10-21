class Game
  def initialize     #TO DO : créé 2 joueurs, créé un board
    # prend le nom de nos joueurs de la couleur ecttt
    puts "#############################".colorize(:blue)
    puts "bienvenue dans mon morpion !".capitalize
    puts "#############################".colorize(:red)
    puts " "
    puts "Entrez le nom du Joueur 1".colorize(:blue)
    player1_name = gets.chomp.colorize(:blue)
    puts "Tu prends les X"
    puts " "
    puts "Entrez le nom du Joueur 2".colorize(:red)
    player2_name = gets.chomp.colorize(:red)
    puts "Tu prends les O"


    @player1 = Player.new(player1_name, "X".colorize(:blue), "à toi de jouer")
    @player2 = Player.new(player2_name, "O".colorize(:red), "à toi de jouer")

    @tic_tac_case = Board.new
  end
# lance le jeu
  def launch_game
    puts "Lets gooooooo"
    turn_play
  end
# ensemble de boucle et condition pour le bon déroulement du jeux 
  def turn_play
    turn = 1
    while turn < 9
      @tic_tac_case.to_s

      if (turn%2) == 0
        player_turn = @player1
      else player_turn = @player2
      end

      @tic_tac_case.play_game(player_turn, player_turn.valeur)
        if @tic_tac_case.winner
            @tic_tac_case.to_s
            puts " "
            puts "Le joueur #{player_turn.player_name} remporte la partie"
            turn = 10
        else
          turn += 1
        end
        if turn == 9
          @tic_tac_case.to_s
          puts "Egalité"
        end
    end
    puts "La partie est terminé voulez vous recommencer ? oui ou non ?"
    awnser = gets.chomp
    if awnser == "oui"
      Game.new.launch_game
    elsif awnser == "non"
      exit
    else puts "mauvaise réponse"
    end
  end


end