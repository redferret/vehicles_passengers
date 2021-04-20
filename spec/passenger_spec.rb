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
  end
end
