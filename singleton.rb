require 'singleton'

# A Singleton is a type of object that can only be instantiated once.
# @return [Singleton] a singleton class
class Single
  include Singleton
end

a,b = Single.instance, Single.instance

if a == b
  puts "same instance"
end

begin
  Single.new
rescue => NoMethodError
  puts "failed creating a new class"
end
