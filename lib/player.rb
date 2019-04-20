class Player

  DEFAULT_HP = 100
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack(player)
    player.wound
  end

  def wound
    @hp -= 10
  end

end
