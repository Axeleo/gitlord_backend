require 'rails_helper'

RSpec.describe Hunter do
  context 'Hunter defaults working' do
    let(:hunter) { Hunter.new }

    it 'has the correct str' do
      expect(hunter.str).to eq 13
    end

    it 'has the correct int' do
      expect(hunter.int).to eq 13
    end

    it 'has the correct agi' do
      expect(hunter.agi).to eq 19
    end

    it 'has the correct calculated hp' do
      expect(hunter.hp).to eq 306
    end

    it 'has the correct calculated mp' do
      expect(hunter.mp).to eq 250
    end

    it 'has the correct calculated dps' do
      expect(hunter.dps).to eq 33
    end

    it 'has the correct calculated armor' do
      expect(hunter.defense).to eq 9
    end

    it 'has the correct resistance' do
      expect(hunter.resistance).to eq 9
    end
  end

  context 'lvl 6 hunter gains correct stats' do
    let(:hunter) { Hunter.build({ exp: 2500 }) }

    it 'has no exp left after leveling' do
      expect(hunter.exp).to eq 0
    end
    
    it 'has leveled up correctly' do
      expect(hunter.level).to eq 6
    end

    it 'has the correct str' do
      expect(hunter.str).to eq 23
    end

    it 'has the correct int' do
      expect(hunter.int).to eq 23
    end

    it 'has the correct agi' do
      expect(hunter.agi).to eq 49
    end

    it 'has the correct calculated hp' do
      expect(hunter.hp).to eq 426
    end

    it 'has the correct calculated mp' do
      expect(hunter.mp).to eq 350
    end

    it 'has the correct calculated dps' do
      expect(hunter.dps).to eq 63
    end

    it 'has the correct calculated defense' do
      expect(hunter.defense).to eq 15
    end

    it 'has the correct resistance' do
      expect(hunter.resistance).to eq 15
    end
  end
end