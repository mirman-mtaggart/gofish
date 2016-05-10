require_relative "cards"

class Game
  attr_accessor :name, :players, :phases, :won
  def initialize(name,deck,players,phases)
    @name = name
    @deck = deck
    @players = players
    @phases = phases
    @won = false
  end
end

class Player
  @@num_players = 0
  attr_accessor :name, :hand
  def initialize(name="Player")
    @name = name
    @@num_players += 1
    if name == "Player"
      name << " #{@@num_players}"
    end
    @hand = []
  end
end
