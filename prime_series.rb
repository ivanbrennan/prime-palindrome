module PrimeSeries
  extend self

  def generator
    Enumerator.new do |yielder|
      yielder.yield(2)
      3.step(by: 2) { |n| yielder.yield(n) if prime?(n) }
    end
  end

  def prime?(n)
    return false if n < 2
    return false if n > 2 && n.even?

    sqrt = Math.sqrt(n).ceil
    (3..sqrt).step(2).none? { |i| n % i == 0 }
  end
end
