require 'spec_helper'

RSpec.describe Race do
  let(:race) { Race.new }
  describe '::new' do
    it 'instantiates two cars' do
      expect(race.cars[0].class).to eq Car
      expect(race.cars[1].class).to eq Car
    end
    it 'accelerates the cars to random speeds' do
      expect(race.cars[0].speed).to_not eq race.cars[1].speed
    end

  end
  describe '#winner' do
    it 'returns the winner' do
     expect(race.winner.speed).to be > (race.loser.speed)
   end
    it 'is not the loser' do
      expect(race.winner).to_not eq (race.loser)
    end
  end

  describe '#loser' do
    it 'returns the loser' do
    expect(race.loser.speed).to be < (race.winner.speed)
  end
    it 'is not the winner' do
      expect(race.loser).to_not eq (race.winner)
    end
  end
end
