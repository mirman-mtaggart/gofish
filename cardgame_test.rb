require "minitest/autorun"
require_relative "cards"
require_relative "cardgame"

class CardGameClassTest < Minitest::Test
  def setup
    p1 = Player.new("Bob")
  end
  def test_player
    assert_equal name, p1.name
  end
end
