require 'rspec'
require './lib/vehicle'

describe Vehicle do
  describe '#new' do
    it 'creates a new instance of Vehicle' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')
      expect(vehicle).to be_a Vehicle
    end

    it 'has a year' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')
      expect(vehicle.year).to eq '2001'
    end

    it 'has a make' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')
      expect(vehicle.make).to eq 'Honda'
    end

    it 'has a model' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')
      expect(vehicle.model).to eq 'Civic'
    end

    it 'has passengers' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')
      expect(vehicle.passengers).to eq []
    end
  end

  describe '#add_passenger' do
    it 'adds passengers to a vehicle' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')

      p1 = instance_double('Passenger', name: 'Sam')
      p2 = instance_double('Passenger', name: 'Fred')
      p3 = instance_double('Passenger', name: 'Mike')

      expected_passengers = [p1, p2, p3]

      vehicle.add_passenger(p1)
      vehicle.add_passenger(p2)
      vehicle.add_passenger(p3)

      expect(vehicle.passengers).to eq expected_passengers
    end
  end

  describe '#<<' do
    it 'performs same action as add_passenger' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')

      p1 = instance_double('Passenger', name: 'Sam')
      p2 = instance_double('Passenger', name: 'Fred')
      p3 = instance_double('Passenger', name: 'Mike')

      expected_passengers = [p1, p2, p3]

      vehicle << p1
      vehicle << p2
      vehicle << p3

      expect(vehicle.passengers).to eq expected_passengers
    end
  end

  describe '#speeding?' do
    it 'answers the question if this vehicle is speeding' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')
      expect(vehicle.speeding?).to eq false
    end
  end

  describe '#speed' do
    it 'sets the vehicle to be speeding' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')
      vehicle.speed
      expect(vehicle.speeding?).to eq true
    end
  end
end
