#Will contain the players input
#Players name with their number of lives

class Players

  attr_reader :name, :lives

  #lives starts at 3 for all players
  def initialize(name)
    @name = name
    @lives = 3
  end

  #lives minus 1 every wrong answer
  def wrong_answer
    @lives -= 1
  end

  #game over when life is zero
  def game_over
    @lives == 0
  end
  
end
