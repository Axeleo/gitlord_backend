require 'rails_helper'

RSpec.describe HeroBase do
  context 'herobase defaults working' do
    let(:hero) { HeroBase.new }

    it 'has the correct str' do
      expect(hero.str).to eq 15
    end

    it 'has the correct int' do
      expect(hero.int).to eq 15
    end

    it 'has the correct agi' do
      expect(hero.agi).to eq 15
    end

    it 'has the correct calculated hp' do
      expect(hero.hp).to eq 330
    end

    it 'has the correct calculated mp' do
      expect(hero.mp).to eq 270
    end

    it 'has the correct calculated dps' do
      expect(hero.dps).to eq 27
    end

    it 'has the correct calculated armor' do
      expect(hero.defense).to eq 8
    end

    it 'has the correct resistance' do
      expect(hero.resistance).to eq 8
    end
  end

  context 'lvl 6 hero gains correct stats' do
    let(:hero) { HeroBase.build({ exp: 2500 }) }

    it 'has no exp left after leveling' do
      expect(hero.exp).to eq 0
    end
    
    it 'has levled up correctly' do
      expect(hero.level).to eq 6
    end

    it 'has the correct str' do
      expect(hero.str).to eq 35
    end

    it 'has the correct int' do
      expect(hero.int).to eq 30
    end

    it 'has the correct agi' do
      expect(hero.agi).to eq 30
    end

    it 'has the correct calculated hp' do
      expect(hero.hp).to eq 570
    end

    it 'has the correct calculated mp' do
      expect(hero.mp).to eq 420
    end

    it 'has the correct calculated dps' do
      expect(hero.dps).to eq 47
    end

    it 'has the correct calculated defense' do
      expect(hero.defense).to eq 11
    end

    it 'has the correct resistance' do
      expect(hero.resistance).to eq 11
    end
  end
end
      

