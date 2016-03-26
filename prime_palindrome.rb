require_relative 'prime_series'
require_relative 'palindrome_filter'

primes = PrimeSeries.new
filter = PalindromeFilter.new(primes)

prime_palindromes = (1..10).map { filter.generate_palindrome }

p prime_palindromes
