# When done, submit this entire file to the autograder.


# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  if arr.length == 0 
    sum = 0
  elsif arr.length == 1
    sum = arr[0]
  else
    arr.sort!
    sum = arr[arr.length-1] + arr[arr.length-2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  i = 0
  if arr.length == 0 
     return false
  elsif arr.length == 1
     return false
  else
    for i in 0 .. (arr.length - 1)
      for j in i+1 .. (arr.length - 1)
        sum = arr[i] + arr[j]
        if sum == n
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  "Hello, " << name
end

def starts_with_consonant? s
  if s =~ /\A(?=[^aeiou])(?=[a-z])/i
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if (s.delete('01') == '')&&(s =~ /100$/)
    return true
  elsif s == "0"
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError if  price <= 0 || isbn.empty?
    @isbn   = isbn
    @price  = price
  end
  def price_as_string
    format("$%.2f", @price)
  end
end
