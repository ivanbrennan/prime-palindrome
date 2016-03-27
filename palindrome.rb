module Palindrome
  extend self

  def filter(generator)
    Enumerator.new do |yielder|
      loop do
        n = generator.next
        yielder.yield(n) if palindrome?(n)
      end
    end
  end

  def palindrome?(n)
    str = n.to_s
    str == str.reverse
  end
end
