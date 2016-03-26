def prime?(n)
  return false if n < 2
  return false if n > 2 && n.even?

  sqrt = Math.sqrt(n).ceil
  (3..sqrt).step(2).none? { |i| n % i == 0 }
end

def palindrome?(str)
  str == str.reverse
end

prime_palindromes = []
n = 2

while prime_palindromes.length < 10
  if palindrome?(n.to_s) && prime?(n)
    prime_palindromes << n
  end

  n += 1
end

p prime_palindromes
