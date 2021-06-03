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

      expect(seventh_flotilla.designation).to eq('Seventh Flotilla')
    end
  end

  describe 'its methods' do

  end
end
