class Flotilla
  attr_reader :name, :personnel, :ships

  def initialize(flotilla_info)
    @name = flotilla_info[:designation]
    @personnel = []
    @ships = []

  end

  def add_ship(ship)
    @ships << ship
  end

  def add_personnel(person)
    @personnel << person
  end

  def recommend_personnel(spacecraft)
    @recommended = []
    experienced = []

    craft_keys = spacecraft.requirements.flat_map do |requirement|
      requirement.keys
    end

    craft_values = spacecraft.requirements.flat_map do |requirement|
      requirement.values
    end

    @personnel.find_all do |person|
      if person.experience > craft_values.max
        experienced << person
      end
    end

    experienced.find_all do |pers|
     craft_keys.each do |key|
        if pers.specialties.any?(key) == true
          @recommended << pers
        end
      end
    end
    @recommended.uniq
  end

  def personnel_by_ship
    ships_persons = {}
    @ships.each do |ship|
      if ships_persons[ship] == nil
        ships_persons[ship] = recommend_personnel(ship)
      else
        ships_persons[ship] << recommend_personnel(ship)
      end
    end
    require "pry"; binding.pry
    ships_persons
  end
end
