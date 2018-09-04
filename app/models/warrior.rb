
class Warrior < HeroBase

  def initialize(**_additional_arguments)
    super(**_additional_arguments)
    @dps = 18
    @str = 22
    @int = 10
    @agi = 13
    @max_hp = 200
    @max_mp = 60
    @defense = 8
    @resistance = 2
  end

  protected
  def skill_boost
    @str += 7
    @int += 1
    @agi += 2
  end
end
