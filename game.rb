#require_relative complements the built-in method require
#by allowing you to load a file that is relative to the file 
#containing the require_relative statement

# The actual game (class Game)
#     - Will contain the loop of the game and players turn information
#       * Holds all prompts for different activities/actions
#       * Validation to find out if players answers is correct or not

require_relative 'players'
require_relative 'questions'

puts "Let' Have Fun!!!"
puts "Let's Play - Two-O-Player Math Game..."

@firstPlayer = Players.new("Player 1")
@secondPlayer = Players.new("Player 2")

def players_turn(player)
  puts "#{player.name}: What does #{Questions.first_random_number} plus #{Questions.second_random_number} equal to?"
  isCorrectAnswer = gets.chomp 
  
  if Questions.validate_answers(isCorrectAnswer)
    puts "YES! You are correct."

  else
    puts "Seriously? No."
    player.wrong_answer
  end

  puts "#{@firstPlayer.name}: #{@firstPlayer.lives}/3 vs #{@secondPlayer.name}: #{@secondPlayer.lives}/3"

end

loop do 
  players_turn(@firstPlayer)
  puts "Player 2 wins with a score of #{@secondPlayer.lives}/3" 
  if (@firstPlayer.game_over)
    break
  end
  players_turn(@secondPlayer)
  puts "Player 1 wins with a score of #{@firstPlayer.lives}/3" 
  if (@secondPlayer.game_over)
    break
  end

  puts "---------- NEW TURN ----------"
  
end

if(@firstPlayer.game_over)
  puts "SORRY PLAYER 1 - GAME OVER!"
else(@secondPlayer.game_over)
  puts "SORRY PLAYER 2 - GAME OVER!"
end


