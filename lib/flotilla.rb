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

end
