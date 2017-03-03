class Player

  attr_reader :name
  attr_accessor :hp

  DEFAULT_HP = 65
  DEFAULT_DAMAGE = 10

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= DEFAULT_DAMAGE
  end

end
