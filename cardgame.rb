require_relative "cards"

class Game
  attr_accessor :name, :players, :phases, :won
  def initialize(name,deck,players,phases)
    # Init variables

  end
end

class Player
  @@num_players = 0
  attr_accessor :name, :hand
  def initialize(name="Player")
    # Init vars
    # Increment num_players
  end
end
