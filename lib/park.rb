class Park
  attr_reader :admission_price,
              :name,
              :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passengers
    @vehicles.reduce([]) do |passengers, vehicle|
      passengers += vehicle.passengers
      passengers
    end
  end

  def revenue
    @vehicles.reduce(0) do |revenue, vehicle|
      revenue += vehicle.num_adults * @admission_price
      revenue
    end
  end
end
