class Passenger
  attr_reader :name, :age

  def initialize(attributes)
    @name = attributes[:name]
    @age = attributes[:age]
  end

  def adult?
    @age >= 18
  end

  def driver?
  end
end
