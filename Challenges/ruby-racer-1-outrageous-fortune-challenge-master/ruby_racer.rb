

class RubyRacer
  attr_reader :players, :die, :length

  def initialize(players, die, length = 30)
    @players = players
    @die = die
    @road1 = Array.new(6 , " |")
    @road2 = Array.new(6 , " |")
    
    @road1[0] = @players[0]
    @road2[1] = @players[1]
  end

  # Returns +true+ if one of the players has reached
  # the finish line, +false+ otherwise
  def finished?
    @players[0]
    @players[1]
  end

  # Returns the winner if there is one, +nil+ otherwise
  def winner
  end

  # Rolls the die and advances +player+ accordingly
  def advance_player(player)
    road = []
    if player == :a
      road = @road1
    else 
      road = @road2
    end
 
    player_position = road.index(player)
    new_position = road.index(player) + die
    road[new_position] = road[player_position]
    road[player_position] = " |"
    p road
  end

  # Returns the current state of the game as a string
  # that can be printed on the command line.
  # The board should have the same dimensions each time.
  def board_visualization
    p @players[0].to_s
    p @players[1].to_s
  end
end
