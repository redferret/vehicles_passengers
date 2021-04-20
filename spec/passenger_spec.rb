require 'rspec'
require './lib/passenger'

describe Passenger do
  describe '#new' do
    it 'creates an instance of Passenger' do
      passenger = Passenger.new({
        name: 'Charlie',
        age: 18
      })
      expect(passenger).to be_a Passenger
    end

    it 'has a name' do
      passenger = Passenger.new({
        name: 'Charlie',
        age: 18
      })

      expect(passenger.name).to eq 'Charlie'
    end

    it 'has an age' do
      passenger = Passenger.new({
        name: 'Charlie',
        age: 18
      })

      expect(passenger.age).to eq 18
    end
  end
end
