=begin 

Create a 2-Player math game where players take turns to answer simple math addition problems. 
A new math question is generated for each turn by picking two numbers between 1 and 20. 
The player whose turn it is is prompted the question and must answer correctly or lose a life.

+ We will need player class:
-> stores players score

+ we will need a question class:
-> initiliaze by picking player 1 then player 2 next. 
-> generates an math addition problems. It picks 2 numbers between 1 and 20. prints "what does #{number} plus #{number} equal? " 
-> wait for player answer to match answer ... get.chomp
-> if answer doesn't match prints "Seriously? no!" --> score minus by one 
-> if answer matches prints "YES! You are correct."
-> prints out the players lives "P1: #{score} vs P2: #{score}"
-> prints out "---New Turn---" for the next player 

=end 