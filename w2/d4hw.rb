# factorial(5) = 5 * factorial(4)
# factorial(4) = 4 * factorial(3)
# factorial(3) = 3 * factorial(2)
# factorial(2) = 2 * factorial(1)
# factorial(1) = 1 (base case)
def factorial(num)
    return 1 if num == 1
    num * factorial(num - 1)
end

p factorial(5)
puts
# Write a method fib(n) that takes in a number and returns the nth number of
# the fibonacci sequence.
# In the fibonacci sequence, the 1st number is 1 and the 2nd number is 1. To generate the
# next number in the sequence, we take the sum of the previous two fibonacci numbers.
# For example the first 5 numbers of the fibonacci sequence are `1, 1, 2, 3, 5`
def fib(n)
    return 1 if n == 1 || n == 2
    fib(n-1) + fib(n-2)
end

p fib(8)
puts

p 42 || false
p nil || false
p nil || :hello
p nil || "h"
p false || "love"

def greet(person = nil)
    if person.nil?
        person = "you"
    end

    p "Hey " + person
end

def greet(person = nil)
    # person = person || "you"
    person ||= "you"
    p "Hey " + person
end

def call_that_proc(val, &prc)
    prc ||= Proc.new { |data| data.upcase + "!!" }
    prc.call(val)
end

p call_that_proc("hey")                                             # => "HEY!!"
p call_that_proc("programmers") { |data| data * 3 }                 # => "programmersprogrammersprogrammers"
p call_that_proc("code") { |data| "--" + data.capitalize + "--"}    # => "--Code--"             

class Restaurant
    attr_accessor :name, :chefs, :menu

    def initialize(name, chefs)
        @name = name
        @chefs = chefs
    end

    def menu
        @menu ||= ["sammies", "big ol' cookies", "bean blankies", "chicky catch", "super water"]
    end
end

five_star_restaurant = Restaurant.new("Appetizer Academy", ["Marta", "Jon", "Soon-Mi"])

p five_star_restaurant
#<Restaurant:0x00007f90b3922368 
# @name="Appetizer Academy",
# @chefs=["Marta", "Jon", "Soon-Mi"]
#>

p five_star_restaurant.menu
#["sammies", "big ol' cookies", "bean blankies", "chicky catch", "super water"]

p five_star_restaurant
#<Restaurant:0x00007f90b3922368
# @name="Appetizer Academy", 
# @chefs=["Marta", "Jon", "Soon-Mi"],
# @menu=["sammies", "big ol' cookies", "bean blankies", "chicky catch", "super water"]
#>