require_relative 'prime_series'
require_relative 'palindrome'

primes = PrimeSeries.generator
filter = Palindrome.filter(primes).lazy

p filter.select { |n| n.to_s.size > 1 }.first(10)
