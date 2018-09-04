class HeroBase
  attr_accessor :level, :primary_attribute, :str, :int, :agi, :max_hp, :max_mp, :weapon, :status, :skills, :armor, :name, :exp 

  def self.build(init_details)
    h = HeroBase.new(init_details)
    h.level_up
    return h
  end

  def initialize(exp: 0, items: [], skills: [], name: 'hero',**_additional_arguments)
    @name = name
    @level = 1
    @exp = exp
    @primary_attribute = primary_attribute()
    @str = 15
    @int = 15
    @agi = 15
    @dps = 12
    @max_hp = 150
    @max_mp = 120
    @defense = 5
    @resistance = 5
    @weapon = items.find { |item| item.type == 'weapon' && item.equip == true }
    @armor = items.find { |item| item.type == 'armor' && item.equip == true }
    @status = []
    @skills = skills
  end

  def dps
    @dps + 1 * primary_attribute()
  end

  def hp
    @max_hp + 12 * @str
  end

  def mp
    @max_mp + 10 * @int
  end

  def defense
    @defense + (0.2 * @agi).round
  end

  def resistance
    @resistance + (0.2 * @agi).round
  end
  
  def level_up
    while @exp >= 500
      @exp -= 500
      @level += 1
      skill_boost
    end
  end

  protected
  def primary_attribute
    @str
  end

  def skill_boost
    @str += 4
    @int += 3
    @agi += 3
  end
end




