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

  describe '#adult?' do
    it 'answers the question if this passenger is 18 years or older' do
      charlie= Passenger.new({
        name: 'Charlie',
        age: 18
      })

      taylor = Passenger.new({
        name: 'Taylor',
        age: 16
      })

      expect(charlie.adult?).to eq true
      expect(taylor.adult?).to eq false
    end
  end

  describe '#driver?' do
    it 'answers the question if this passenger is the driver' do
      charlie= Passenger.new({
        name: 'Charlie',
        age: 18
      })

      expect(charlie.driver?).to eq false
    end
  end
end
