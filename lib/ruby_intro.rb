# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each do
    |i| sum += i
  end
  sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    0
  elsif  arr.length == 1
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

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
