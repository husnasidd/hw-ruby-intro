# When done, submit this entire file to the autograder.

# Part 1

# initialize sum to 0
# for each element in the arr add it to the total sum 
# return the sum
def sum arr
  sum = 0
  arr.each do |n|
    sum+= n
  end
  return sum
end

#check to see if the length of the array is equal to 0; meaning there are no elements in the array
  #if so return 0
#if there is only one element in the array - return that element
#sort the array in place and add the last two elements together to get the sum of the largest two elements
def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length==1
    return arr[0]
  else arr.sort!
    return arr[-1]+arr[-2]
  end
end

#if the array is empty or only has one element in it return false
#else for each x and y in the array if x+y= n and x and y are not the same element then return true
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
  # can have one or more 0's and 1's
  if(s =~ /^[0-1]+$/)
    # convert string to integer with base 2
    # if the number mod 4 is equal to 0, it is a multiple of 4 - return true
    # else return false
    return s.to_i(2) % 4 == 0
  else
    return false
  end
end

# Part 3

class BookInStock
  #read and write instance variable -- get and set 
  # attr_reader :isbn
  # attr_reader :price
  
  # attr_writer :isbn
  # attr_writer :price
  
  #both reader and writer-- the attr_reader and attr_writer above are not necessary 
  attr_accessor :isbn
  attr_accessor:price
  
  def initialize(isbn, price)
    if(isbn == nil || isbn.length == 0)
      raise ArgumentError.new("Invalid input for ISBN")
    end
    if(price <= 0)
      raise ArgumentError.new("Price must be greater than 0.")
    end
      
    @isbn = isbn #sets instance variable
    @price = price
  end
  
  def price_as_string
    "$%0.2f" % @price
  end
end
