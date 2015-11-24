require 'simplecov'
SimpleCov.start

require_relative '../lib/euklides'

RSpec.describe 'euklides.rb' do
  describe '#NWD' do
    it 'should be defined if numbers are random' do
      expect(euklides(12,18)).to eq(6)
      expect(euklides(60,12)).to eq(12)
    end
    it 'should be defined if numbers are equal' do
      expect(euklides(12,12)).to eq(12)
    end
    it 'should be defined if one of numbers is 1' do
      expect(euklides(12,1)).to eq(1)
    end
  end
end
