require_relative 'prime_series'
require_relative 'palindrome_filter'

primes = PrimeSeries.new
filter = PalindromeFilter.new(primes)

p filter.take(10)
