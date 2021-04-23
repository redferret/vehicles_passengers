require 'rspec'
require './lib/park'

RSpec.describe Park do
  describe '#new' do
    it 'tests that Park exists' do
      park = Park.new('Devils Head', 5)
      expect(park).is_a? Park
    end

    it 'has a name' do
      park = Park.new('Devils Head', 5)
      expect(park.name).to eq 'Devils Head'
    end

    it 'has an admission price' do
      park = Park.new('Devils Head', 5)
      expect(park.admission_price).to eq 5
    end

    it 'has a list of vehicles' do
      park = Park.new('Devils Head', 5)
      expect(park.vehicles).to eq []
    end
  end

  describe '#add_vehicle' do
    it 'adds a vehicle to the park' do
      park = Park.new('Devils Head', 5)
      vehicle1 = instance_double('Vehicle')
      vehicle2 = instance_double('Vehicle')

      expected = [vehicle1, vehicle2]

      park.add_vehicle(vehicle1)
      park.add_vehicle(vehicle2)

      expect(park.vehicles).to eq expected
    end
  end

  describe '#passengers' do
    it 'lists all the passengers that have entered the park' do
      park = Park.new('Devils Head', 5)

      passenger1 = instance_double('Passenger', name:'Mike')
      passenger2 = instance_double('Passenger', name:'Bob')
      passengers = [passenger1, passenger2]

      vehicle1 = instance_double('Vehicle', passengers: passengers)

      expect(park.passengers).to eq passengers
    end
  end
end
