require 'rspec'
require './lib/spacecraft'

RSpec.describe do
  describe 'instantiation' do
    it 'creates a new spacecraft' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(daedalus).to be_an_instance_of(Spacecraft)
    end

    it 'has readable attributes' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(daedalus.name).to eq('Daedalus')
      expect(daedalus.fuel).to eq(400)
    end
  end
  describe 'its methods' do
    it 'can add requirements to itself' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(daedalus.requirements).to eq([])
      daedalus.add_requirement({astrophysics: 6})
      daedalus.add_requirement({quantum_mechanics: 3})

      expect(daedalus.requirements).to eq([{astrophysics: 6}, {quantum_mechanics: 3}])
    end
  end
end
