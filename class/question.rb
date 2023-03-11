class Question
  
  def initialize(turn, player_one, player_two)
    @num_one = rand(21)
    @num_two = rand(21)
    @answer = @num_one + @num_two
    @turn = turn
    @player_one = player_one
    @player_two = player_two
  end

  def ask_player
    prompt = "What does #{@num_one} plus #{@num_two} equal?"
    
    if(@turn % 2 != 0)
      puts "Player 2: " + prompt
      answer = gets.chomp
      is_correct(answer.to_i)
    else
      puts "Player 1: " + prompt
      answer = gets.chomp
      is_correct(answer.to_i)
    end
     
  end

  def is_correct(answer)
    if(answer == @answer)
      return "YES! You are correct."
    else
      if(@turn == 1)
        @player_two.lose_life
        return "Seriously? No!"
      else
        @player_one.lose_life
        return "Seriously? No!"
      end
    end
  end

end