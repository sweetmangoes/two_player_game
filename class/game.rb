class Game

  def initialize
   @player_one = Player.new
   @player_two = Player.new
   @turn = 0
  end
 
  def start_game
   question = Question.new(@turn, @player_one, @player_two)
   question.ask_player
   check_defeat
  end
 
  def check_defeat
   if(@player_one.lives == 0)
     puts "Player 2 wins with a score of #{@player_two.lives}/3"
     puts "----- GAME OVER -----"
   elsif(@player_two.lives == 0)
     puts "Player 1 wins with a score of #{@player_one.lives}/3"
     puts "----- GAME OVER -----"
   else
     puts "P1: #{@player_one.lives}/3 vs P2: #{@player_two.lives}/3"
     puts "----- NEW TURN -----"
     @turn += 1
     start_game
   end
  end
 
 end