class ItemBase 
  attr_accessor :eqiupable, :rarity, :tradeable

  def initialize(equip: true, rarity: 'common', tradeable: true, **_additional_arguments)
    @equipable = equip
    @rarity = rarity
    @tradeable = tradeable
  end
end

class Weapon < ItemBase

  def initialize(is_ranged: false, is_melee: false, dmg_mod: 0, armor_mod:, resistance_mod: 0, 0 stat_mod: {})
    @stat_mod = stat_mod
    @is_ranged = is_ranged
    @is_melee = is_melee
    @dmg_mod = dmg_mod
    @armor_mod = armor_mod
    @resistance_mod = resistance_mod
  end
end


class Armor < ItemBase

  def initialize(armor_boost: 0, resistance_boost: 0, stat_mod: {})
    @armor_boost = armor_boost
    @resistance_boost = resistance_boost
    @stat_mod = stat_mod
  end
end

class Artifact < ItemBase

  def initialize(stat_mod: {}, armor_mod: 0, resistance_mod: 0, status_mod: {})
    @stat_mod = stat_mod
    @armor_mod = armor_mod
    @resistance_mod = resistance_mod
    status_mod = status_mod
  end
end