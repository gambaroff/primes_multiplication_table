#!/usr/bin/ruby
require 'optparse'
require_relative 'primes_extractor'

options = {}
opt_parser = OptionParser.new do |opt|
  opt.on('-n','--count COUNT','how many primes do you wish to multiply') do |count|
    options[:count] = count.to_i
  end
end

opt_parser.parse!

primes = PrimeExtractor.primes(options[:count] || 10)
print '     '
primes.each {|i| print "%-3d  " % i}
print "\n     "
primes.each {|i| print '---- '}
print "\n"

primes.each do |j|
  print "%-3d| " % j
  primes.each {|i| print "%-3d  " % (i*j)}
  print "\n"
end
