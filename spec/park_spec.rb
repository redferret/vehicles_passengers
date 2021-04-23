require 'rspec'
require './lib/park'

RSpec.describe Park do
  describe '#new' do
    it 'tests that Park exists' do
      park = Park.new
      expect(park).is_a? Park
    end
  end
end
