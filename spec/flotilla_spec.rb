require 'rspec'
require './lib/flotilla'

RSpec.describe do
  describe 'instantiation' do
    it 'creates a new flotilla' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla).to be_an_instance_of(Flotilla)
    end

    it 'has readable attributes' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla.name).to eq('Seventh Flotilla')
    end
  end

  describe 'its methods' do
    it 'can add ships to its fleet' do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
    daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

    expect(seventh_flotilla.ships).to eq([])

    seventh_flotilla.add_ship(daedalus)

    expect(seventh_flotilla.ships).to eq([daedalus])
    end
  end
end
