class Game

 attr_accessor :player_one, :player_two

 def initialize
  @player_one = Player.new
  @player_two = Player.new
 end 

end