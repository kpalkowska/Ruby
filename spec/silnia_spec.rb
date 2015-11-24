require 'simplecov'
SimpleCov.start

require_relative '../lib/silnia'

RSpec.describe 'silnia.rb' do
  describe '#Silnia' do
    it 'should be defined' do
      expect { silnia(1000) }.not_to raise_error
    end
    it 'should be defined for natural numbers' do
      expect(silnia(1)).to eq(1)
      expect(silnia(5)).to eq(120)
    end
    it 'should not be equal to factorial' do
      expect(silnia(4)).not_to eq(8)
      expect(silnia(1)).not_to eq(0)
    end
    it 'should be defined for zero' do
      expect(silnia(0)).to eq(1)
    end
  end
end
