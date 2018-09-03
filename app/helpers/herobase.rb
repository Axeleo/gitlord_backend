class HeroBase
  attr_accessor :level, :dps, :primary_attribute, :str, :int, agi:, :max_hp, :max_mp, :armor, :resistance, :weapon, :status, :skills 

  def initialize(exp: 0, items: [], skills: [], **_additional_arguments)
    @level = 1
    @exp = exp
    @str = 15
    @int = 15
    @agi = 15
    @dps = 12
    @primary_attribute = @str
    @max_hp = 150
    @max_mp = 120
    @armor = 5
    @resistance = 5
    @weapon = items.find { |item| item.type == 'weapon' && item.equip == true }
    @armor = items.find { |item| item.type == 'armor' && item.equip == true }
    @status = []
    @skills = skills
  end

  def dps
    @dps + 1 * primary_attribute
  end

  def hp
    @max_hp + 12 * @str
  end

  def mp
    @max_mp + 10 * @int
  end

  def armor
    @armor + (0.2 * @agi).round
  end

  def resistance
    @resistance + (0.2 * @agi).round
  end
  

  private
  def level_up
    while @exp > 500
      @exp -= 500
      @level++
      skill_boost
    end
  end

  def skill_boost
    @str += 3
    @int += 3
    @agi += 3
    @primary_attribute += 1
  end
end


class Warrior < HeroBase

  def initialize()
    @dps = 18 + 1 * primary_attribute
    @str = 22
    @int = 10
    @agi = 13
    @primary_attribute = @str
    @max_hp = 200
    @max_mp = 60
    @armor = 8
    @resistance = 2
  end

  private
  def skill_boost
    @str += 6
    @int += 1
    @agi += 2
  end
end

class Mage < HeroBase

  def initialize()
    @dps = 10
    @str = 11
    @int = 21
    @agi = 13
    @primary_attribute = @int
    @max_hp = 110
    @max_mp = 160
    @armor = 3
    @resistance = 7
  end

  private
  def skill_boost
    @str += 4
    @int += 8
    @agi += 3
  end
end

class Hunter < HeroBase

  def initialize()
    @dps = 14
    @str = 13
    @int = 13
    @agi = 19
    @primary_attribute = @int
    @max_hp = 150
    @max_mp = 120
    @armor = 5
    @resistance = 5
  end

  private
  def skill_boost
    @str += 4
    @int += 8
    @agi += 3
  end
end
