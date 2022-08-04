require 'benchmark'
def find_shortest_string(arr)
  # type your code in here
  arr.min_by(&:length)
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string(['flower', 'juniper', 'lily', 'dadelion'])

  # Don't forget to add your own!

  # BENCHMARK HERE
  puts 
 
  startTime = Time.now

  1000.times do
    find_shortest_string(['cat', 'hi', 'dog', 'an'])
  end

  averageTime = (Time.now - startTime) / 1000
  puts averageTime
end

# Please add your pseudocode to this file
# And a written explanation of your solution
##1. Iterate over array 
##2. Compare length of the string in the array 
##3. Return smallest
