require_relative "cards"

class Game
  attr_accessor :name, :players, :phases, :won
  def initialize(name,deck,players,phases)
    # Assign arguments to class variables
    @won = false
  end
end

class Player
  @@num_players = 0
  attr_accessor :name, :hand
  def initialize(name="Player")
    # Initialize class variables
    # Increment @@num_players
  end
end

class Phase
  # ????
end
