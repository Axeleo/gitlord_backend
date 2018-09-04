class Mage < HeroBase

  def initialize(**_additional_arguments)
    super(**_additional_arguments)
    @dps = 10
    @str = 11
    @int = 21
    @agi = 13
    @primary_attribute = @int
    @max_hp = 110
    @max_mp = 160
    @defense = 3
    @resistance = 7
  end

  protected
  def primary_attribute
    @int
  end

  def skill_boost
    @str += 3
    @int += 5
    @agi += 2
  end
end
