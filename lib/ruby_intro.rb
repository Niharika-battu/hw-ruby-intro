# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  @sortedarray = arr.sort
  sum @sortedarray.last(2)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  @sum = arr.combination(2).map { |a, b| a + b }
  @sum.include? n
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s =~ /\A(?=[^aeiou])(?=[a-z])/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == '0'
  /^[10]*00$/.match(s)
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError if isbn == "" || price <= 0.0
    @isbn = isbn
    @price = price
  end

  def price_as_string()
    "$#{'%.2f' % @price}" 
  end
end
