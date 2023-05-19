# W1D1 Homework
def get_avg(num1, num2)
    (num1 + num2) / 2.0
end

print "--------------------------------\n"

puts "Giving the average of two numbers"
print "First number: "
number1 = gets.chomp.to_f
print "Second number: "
number2 = gets.chomp.to_f
print "Average is #{get_avg(number1, number2)}\n"

print "--------------------------------\n"

print "Prints even if an integer is an even number.\n"
integer = gets.chomp.to_i
puts "Even" if integer.even?
# puts "Odd" if !integer.even?

print "--------------------------------\n"

def all_numbers_even?(nums)
    nums.all? { |num| num.even?}
end

arr1 = [2, 4, 6, 8, 10]
p all_numbers_even?(arr1)

arr2 = [1, 3, 6, 7, 9]
p all_numbers_even?(arr2)

print "--------------------------------\n"

nums = [1, 2, 3, 4, 5, 6]
print "All numbers are even" if nums.all? {|num| num.even?}
print "Not all numbers are even\n" if !nums.all? {|num| num.even?}

print "--------------------------------\n"

print "At least one number is an even number\n" if nums.any? {|num| num.even?}

print "--------------------------------\n"

print "None of the numbers are even\n" if nums.none? {|num| num.even?}
print "Some of the numbers are even numbers\n" if !nums.none? {|num| num.even?}

print "--------------------------------\n"

nums = [1, 2, 3]
print "Exactly one even number\n" if nums.one? {|num| num.even?}

print "--------------------------------\n"

nums = [1, 2, 3, 4, 5, 6, 12, 90, 109, 876, 2344, 6567, 9623]
print "There are #{nums.count {|num| num.even?}} even numbers\n"
print "There are #{nums.count {|num| num.odd?}} odd numbers\n"

print "--------------------------------\n"

print "The sum of the array is #{nums.sum}\n"

print "--------------------------------\n"

print "The minimum integer of the array is #{nums.min}\n"
print "The maximum integer of the array is #{nums.max}\n"

print "--------------------------------\n"

multi_d_arr = [[["a", "b"], "c"], ["d"], [["e", ["f", "g", "h"]]]]
p multi_d_arr
p multi_d_arr.flatten

print "--------------------------------\n"

def modify_string(str, options={"upper"=>false, "repeats"=>1})
    str.upcase! if options["upper"]
    p str * options["repeats"]
end

# no implicit conversion from nil to integer
# modify_string("friends", "upper"=>true)

modify_string("friends")
modify_string("friends", "upper"=>true, "repeats"=>5)

print "--------------------------------\n"

def print_words(word_1, word_2, *other_words)
    p word_1
    p word_2
    p other_words.join(" ")
end

print_words("a", "b", "hello", "my", "homie")

print "--------------------------------\n"

arr_1 = [1, 3, 4, 5, 6, 9, 12, 13, 14, 15, 16, 17, 19, 21]
p arr_1.inject {|acc, ele| acc + ele}
p arr_1.sum

difference = arr_1.inject {|acc, ele| acc - ele}
p difference

arr_2 = [2, 3, 4, 7, 9]
p arr_2.inject {|acc, ele| acc * ele}
p arr_2.inject(100) {|acc, ele| acc * ele }
p (arr_2.inject do |acc, ele|
    if ele.even?
        acc + ele
    else
        acc
    end
end)

arr_3 = [2, 10, -8, -6, 12, -1]
p (arr_3.inject do |acc, ele|
    if ele < acc
        ele
    else
        acc
    end
end)

print "--------------------------------\n"

$global_variable = 32
FOOD = "pizza"

def get_var
    p $global_variable
end

get_var

p FOOD
FOOD.upcase!
p FOOD

print "--------------------------------\n"

