class Vehicle
  attr_reader :year, :make, :model

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @is_speeding = false
  end

  def speeding?
    @is_speeding
  end

  def speed
  end
end
