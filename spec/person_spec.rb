require 'rspec'
require './lib/person'

RSpec.describe do
  describe 'instantiation' do
    it 'creates a new person' do
      kathy = Person.new('Kathy Chan', 10)

      expect(kathy).to be_an_instance_of(Person)
    end

    it 'has readable attributes' do
      kathy = Person.new('Kathy Chan', 10)

      expect(kathy.name).to eq('Kathy Chan')
      expect(kathy.experience).to eq(10)
      expect(kathy.specialties).to eq([])

    end
  end

  describe 'its methods' do
    it 'can add specialties' do
      kathy = Person.new('Kathy Chan', 10)

      expect(kathy.specialties).to eq([])

      kathy.add_specialty(:astrophysics)
      kathy.add_specialty(:quantum_mechanics)

      expect(kathy.specialties).to eq([:astrophysics, :quantum_mechanics])

    end
  end
end
