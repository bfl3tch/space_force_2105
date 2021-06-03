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
      expect(kathy.specialities).to eq([])

    end
  end

  desribe 'its methods' do
    it 'can add specialties' do
      kathy = Person.new('Kathy Chan', 10)

      expect(kathy.specialities).to eq([])

      kathy.add_speciality(:astrophysics)
      kathy.add_speciality(:quantum_mechanics)

      expect(kathy.specialities).to eq([:astrophysics, :quantum_mechanics])
      
    end
  end
end
