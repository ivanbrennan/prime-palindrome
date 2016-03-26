require_relative 'prime_series'

def palindrome?(str)
  str == str.reverse
end

primes = PrimeSeries.new
prime_palindromes = []

while prime_palindromes.length < 10
  n = primes.generate

  if palindrome?(n.to_s)
    prime_palindromes << n
  end
end

p prime_palindromes
