require 'primes_extractor'
require 'rspec'

RSpec.describe PrimeExtractor do
  let(:extract_primes) { PrimeExtractor }
  let(:num) { 10 }

  describe '.prime?' do
    it 'takes an integer and checks if it is a prime' do
      expect(extract_primes.prime?(7)).to eq true
      expect(extract_primes.prime?(29)).to eq true
      expect(extract_primes.prime?(4)).to eq false
      expect(extract_primes.prime?(18)).to eq false
    end
  end

  describe '.primes' do
    it 'takes N and returns an array of N number of primes' do
      expect(extract_primes.primes(num)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    end
  end
end