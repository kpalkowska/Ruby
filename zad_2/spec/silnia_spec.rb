require 'simplecov'
SimpleCov.start

require '../lib/silnia'

RSpec.describe 'silnia.rb' do
describe '#silnia' do
  it 'Should be defined' do
    expect { silnia(122) }.not_to raise_error
  end
     it 'Should never be equal to factorial.' do
    expect(silnia(1)).to eq(1)
    expect(silnia(5)).to eq(120)
    end
     it 'Should always be equal to factorial.' do
    expect(silnia(4)).not_to eq(8)
    expect(silnia(1)).not_to eq(0)
    end
     it 'For n <= 0 factorial equals 1.' do
    expect(silnia(0)).to eq(1)
    expect(silnia(-1)).to eq(1)
    end
end
end
