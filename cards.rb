class Card
  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def to_s()
    return "#{@value} of #{@suit}"
  end
end

class FaceCard < Card
  def initialize(suit,value,label)
    super(suit,value)
    @label = label
  end
  def to_s()
    return "#{@label} of #{@suit}"
  end
end

class Joker < FaceCard
  def initialize(suit="Joker",value=0)
    super(suit,value,"Joker")
  end

  def to_s()
    return "#{@label}"
  end
end

class Deck
  attr_reader :cards
  @@suits = [
    "clubs",
    "diamonds",
    "hearts",
    "spades"
  ]

  def initialize(jokers=0,ace_val=1)
    @cards = []
    for s in @@suits
      # Create number cards
      for i in 2..10
        new_card = Card.new(s,i)
        @cards.push(new_card)
      end
      # Create face cards
      for f in [["Jack",11],["Queen",12],["King",13],["Ace",ace_val]]
        new_card = FaceCard.new(s,f[1],f[0])
        @cards.push(new_card)
      end
      #If Jokers, add jokers
    end
    if jokers > 0
      for i in 1..jokers
        @cards.push(Joker.new())
      end
    end
  end

  def shuffle()
    @cards.shuffle!()
  end

  def draw(n=1)
    hand = []
    for i in 1..n
      hand.push(@cards.pop())
    end
    hand
  end

end

# d = Deck.new()
# d.shuffle()
# puts d.cards
