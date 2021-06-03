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
end
