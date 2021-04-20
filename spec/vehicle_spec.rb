require 'rspec'
require './lib/vehicle'

describe Vehicle do
  describe '#new' do
    before :each do
      @vehicle = Vehicle.new('2001', 'Honda', 'Civic')
    end

    it 'creates a new instance of @vehicle' do
      expect(@vehicle).to be_a Vehicle
    end

    it 'has a year' do
      expect(@vehicle.year).to eq '2001'
    end

    it 'has a make' do
      expect(@vehicle.make).to eq 'Honda'
    end

    it 'has a model' do
      expect(@vehicle.model).to eq 'Civic'
    end

    it 'has passengers' do
      expect(@vehicle.passengers).to eq []
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
    it 'calls add_passenger' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')
      allow(vehicle).to receive(:add_passenger)

      passenger_mock = double('Passenger')

      vehicle << passenger_mock

      expect(vehicle).to have_received(:add_passenger).with(passenger_mock)
    end
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

  describe '#num_adults' do
    it 'returns the number of passenger adults' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')

      p1 = instance_double('Passenger', adult?: true)
      p2 = instance_double('Passenger', adult?: false)
      p3 = instance_double('Passenger', adult?: false)
      p4 = instance_double('Passenger', adult?: true)

      vehicle << p1
      vehicle << p2
      vehicle << p3
      vehicle << p4

      expect(vehicle.num_adults).to eq 2
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
