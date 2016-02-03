class PrimeExtractor

  def self.primes(n)
    primes = []
    (2...Float::INFINITY).select do |num|
      primes.push(num) if prime?(num)
      break if primes.size == n
    end
    primes
  end

  def self.prime?(num)
    (2..Math.sqrt(num)).each do |i|
      return false if num % i == 0
    end
    true
  end
end

