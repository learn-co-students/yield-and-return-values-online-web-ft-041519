# require 'pry'
# Here we are setting a variable, collection, equal to an empty array.
# Then, inside our while loop, we push the return value of using yield(array[i]) into that collection array.
#We need to return that new collection at the end of our method

# while loop, yielded each individual member of an array to a block and captured the return values of yielding those items to the block.
# This is exactly how the #collect method works, and we've just built it out, all by ourselves.
def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }

# def hello(array)
#   i = 0
#   while i < array.length
#     yield(array[i])
#     i += 1
#   end
# end
#
# hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}"

# > Hi, Tim
# > Hi, Tom
# > Hi, Jim
# => nil

# def hello(array)
#   i = 0
#   while i < array.length
#     binding.pry
#     yield(array[i])
#     i += 1
#   end
# end

# hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }

#Pry console terminal
#yield(array[i])
# > "Hi, Tim"
#yield(some_argument) will give us the return value of the execution of the block with that argument, we can capture those return values.
