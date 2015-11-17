require 'simplecov'
SimpleCov.start

require_relative '../lib/silnia'
#require 'silnia'

RSpec.describe 'silnia.rb' do
  describe '#silnia' do

    it 'should be defined' do
      expect { silnia(369) }.not_to raise_error
    end

    it 'should never be equal to factorial.' do
      expect(silnia(1)).to eq(1)
      expect(silnia(5)).to eq(120)
    end

    it 'should always be equal to factorial.' do
      expect(silnia(4)).not_to eq(8)
      expect(silnia(1)).not_to eq(0)
    end

    it 'should be defined' do
      expect(silnia(0)).to eq(1)
    end
  end
end
