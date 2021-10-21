class Player
  attr_accessor :player_name, :valeur
  attr_writer :winner
# initialize le nom des joueurs 
  def initialize(player_name, valeur, win)
    @player_name = player_name
    @valeur = valeur
    @win = false
  end
end