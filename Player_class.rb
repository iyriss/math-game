class Player
  attr_accessor :player, :life, :turn

  def initialize(player)
    @player = player
    @life = 3
    @turn = false
  end

  def lose_life
    @life -= 1
  end

  def is_alive?
    @life != 0
  end

  def print_name
    @player
  end

end
