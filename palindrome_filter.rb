class PalindromeFilter
  def initialize(generator)
    @generator = generator
  end

  def generate_palindrome
    filter.resume
  end

  private

  def filter
    @filter ||= Fiber.new do
      loop do
        n = @generator.generate
        Fiber.yield(n) if palindrome?(n)
      end
    end
  end

  def palindrome?(n)
    str = n.to_s
    str == str.reverse
  end
end
