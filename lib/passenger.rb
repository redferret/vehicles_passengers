class Passenger
  attr_reader :name, :age

  def initialize(attributes)
    @name = attributes[:name]
    @age = attributes[:age]
    @is_the_driver = false
  end

  def adult?
    @age >= 18
  end

  def driver?
    @is_the_driver
  end

  def drive
    @is_the_driver = true
  end
end
