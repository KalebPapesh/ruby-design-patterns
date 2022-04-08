# Prototype pattern works out of the box in Ruby
# This pattern can be identified by a clone or copy method
class Prototype
  attr_accessor :str
end

def puts_clones(s1, s2)
  puts "s1: #{s1.str}"
  puts "s2: #{s2.str}"
end

s1 = Prototype.new
s1.str = "Hello"

s2 = s1.clone

puts "First check"
puts_clones(s1, s2)

s2.str[1,4] = "i"

puts "Second check"
puts_clones(s1, s2)
