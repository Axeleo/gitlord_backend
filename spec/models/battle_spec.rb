require 'rails_helper'
require 'hero_base'

RSpec.describe Battle do
  context 'setup only with correct parameters' do
    it 'should reject one hero' do
      heroA = HeroBase.new
      expect(Battle.new(hero1: heroA)).to_not be_valid
    end

    it 'should reject no heros' do
      heroA = HeroBase.new
      expect(Battle.new()).to_not be_valid
    end

    it 'accepts two heros' do
      heroA = HeroBase.new
      heroB = HeroBase.new
      expect(Battle.new(hero1: heroA, hero2: heroB)).to be_valid
    end
  end

  context 'two heros battle' do
    let(:hero1) { HeroBase.build(exp: 1000, name: "weaker_hero") }
    let(:hero2) { HeroBase.build(exp: 4000, name: 'stronger_hero') }

    it 'stronger hero kills weaker hero' do
      expect(Battle.build(hero1: hero1, hero2: hero2).combat_log.last).to eq "weaker_hero has been killed"
    end
  end
end