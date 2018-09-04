require 'pry'

class Battle
  attr_accessor :hero1, :hero2, :turn_counter, :combat_log, :hero1_stats, :hero2_stats

  def self.build(init_details)
    b = Battle.new(init_details)
    b.prepare()
    b.begin()
    return b
  end

  def initialize(hero1: {}, hero2: {})
    @hero1 = hero1
    @hero2 = hero2
    @combat_log = []
    @turn_counter = 0
  end

  def prepare()
    @hero1_stats = {
      name: @hero1.name,
      hp: @hero1.hp,
      mp: @hero1.mp,
      dps: @hero1.dps,
      str: @hero1.str,
      int: @hero1.int,
      agi: @hero1.agi,
      defense: @hero1.defense,
      resistance: @hero1.resistance
    }
    @hero2_stats = {
      name: @hero1.name,
      hp: @hero1.hp,
      mp: @hero1.mp,
      dps: @hero1.dps,
      str: @hero1.str,
      int: @hero1.int,
      agi: @hero1.agi,
      defense: @hero1.defense,
      resistance: @hero1.resistance
    }
  end

  def begin
    while !dead?(@hero1_stats) && !dead?(@hero2_stats) do
      attack_sequence
      @turn_counter += 1
    end
  end

  def attack_sequence()
    if @hero1_stats[:agi] > @hero2_stats[:agi]
      attack(@hero1_stats, @hero2_stats)
      return if dead?(@hero2_stats)
      attack(@hero2_stats, @hero1_stats)
      return if dead?(@hero1_stats)
    else
      attack(@hero2_stats, @hero1_stats)
      return if dead?(@hero1_stats)
      attack(@hero1_stats, @hero2_stats)
      return if dead?(@hero2_stats)
    end
  end

  def attack(attacker, defender)
    defender[:hp] -= attacker[:dps]
    combat_log.push("#{attacker[:name]} hits #{defender[:name]} for #{attacker[:dps]}. #{defender[:name]} has #{defender[:hp]}")
  end

  def dead?(hero_stats)
    if hero_stats[:hp] <= 0
      @combat_log.push("#{hero_stats[:name]} has been killed")
      true
    else 
      false
    end
  end

  def valid?
    @hero1.present? && @hero2.present?
  end
end

