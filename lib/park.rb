class Park
  attr_reader :admission_price,
              :name,
              :vehicles
              
  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
  end
end
