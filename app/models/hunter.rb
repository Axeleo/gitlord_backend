class Hunter < HeroBase

  def self.build(init_details)
    h = Hunter.new(init_details)
    h.level_up
    return h
  end

  def initialize(**_additional_arguments)
    super(**_additional_arguments)
    @dps = 14
    @str = 13
    @int = 13
    @agi = 19
    @max_hp = 150
    @max_mp = 120
    @defense = 5
    @resistance = 5
  end

  protected
  def primary_attribute
    @agi
  end

  def skill_boost
    @str += 2
    @int += 2
    @agi += 6
  end
end