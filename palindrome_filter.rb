class PalindromeFilter
  def initialize(generator)
    @generator = generator
  end

  def take(n)
    filter.take(n)
  end

  private

  def filter
    @filter ||= Enumerator.new do |yielder|
      loop do
        n = @generator.generate
        yielder.yield(n) if palindrome?(n)
      end
    end
  end

  def palindrome?(n)
    str = n.to_s
    str == str.reverse
  end
end
