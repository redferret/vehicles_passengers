require 'rspec'
require './lib/vehicle'

describe Vehicle do
  describe '#new' do
    it 'creates a new instance of Vehicle' do
      vehicle = Vehicle.new('2001', 'Honda', 'Civic')
      expect(vehicle).to be_a Vehicle
    end
  end
end
