# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each do
  |i|
    sum += i
  end
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    0
  elsif arr.length == 1
    return arr.first
  else
    max1, max2 = -114514, -114514
    arr.each do |i|
      if i > max1 and i > max2
        if max1 > max2
          max2 = i
        else
          max1 = i
        end
      elsif i > max1
        max1 = i
      elsif i > max2
        max2 = i
      end
    end
    max1 + max2
  end
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  dp = {}
  arr.each do |i|
    if dp.has_key?(n - i)
      return true
    end
    dp[i] = i
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  if (s =~ /^\w/i) == nil
    return false
  end
  if (s =~ /^[^AEIOUaeiou]/i) != nil
    return true
  end
  false
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  if s == "0"
    return true
  end
  if (s =~ /^[01]*00$/i) != nil
    return true
  end
  false
end

# Part 3

class BookInStock
  @isbn = ""
  @price = 0.0

  def initialize(isbn, price)
    if price <= 0 or isbn.empty?
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def isbn=(isbn)
    @isbn = isbn
  end
  def isbn
    @isbn
  end

  def price=(price)
    @price = price
  end

  def price
    @price
  end

  def price_as_string
    "$%.2f" % @price
  end
end