# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each do |n|
    sum+= n
  end
  return sum
end

def max_2_sum arr
  if arr.length ==0
    return 0
  elsif arr.length==1
    return arr[0]
  else arr.sort!
    return arr[-1]+arr[-2]
  end
end

def sum_to_n? arr, n
  if arr.nil? || arr.empty? || arr.size == 1
    return false
  else 
    arr.each {|x| arr.each {|y| return true if x + y == n && x != y}}
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  # i means ignore case
  # consonant is any letter other than a e i o u
  # =~ matches regex against a given string
  if(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if(s =~ /^[0-1]+$/)
    return s.to_i(2) % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor:price
  
  def initialize(isbn, price)
    if(isbn == nil || isbn.length == 0)
      raise ArgumentError.new("Invalid input for ISBN")
    end
    if(price <= 0)
      raise ArgumentError.new("Price must be greater than 0.")
    end
      
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    "$%0.2f" % @price
  end


end
