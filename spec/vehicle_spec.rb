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
  end
end
