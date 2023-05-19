# W1D2 Homework
# Write a method `prime?(n)` that takes in a number and returns a
# boolean indicating whether or not the number is a prime.
# A prime number is a number only divisible by two numbers, 1 and itself.
# def prime?(n)
# 	return false if n < 2
# 	(2...n).none? {|divisor| n % divisor == 0}
# end

# print "-------------------------------------\n"

# p prime?(1)		# => false
# p prime?(2)		# => true		
# p prime?(3)		# => true
# p prime?(9)		# => false
# p prime?(16)	# => false
# p prime?(60)	# => false
# p prime?(91)	# => false
# p prime?(199)	# => true

# print "-------------------------------------\n"

# require "byebug"   #
   
# def is_prime?(number)
# 	(2...number).each do |factor|
# 	return false if number % factor == 0
# 	end

# 	number > 1
# end

# def first_n_primes(num_primes)
# 	primes = []
# 	num = 2
# 	debugger        #
# 	while primes.length < num_primes
# 		primes << num if is_prime?(num)
# 		num += 1
# 	end
# 	primes
# end

#  p first_n_primes(11)

def add_and_proc(num_1, num_2, proc)
	sum = num_1 + num_2
	p proc.call(sum)
end

doubler = Proc.new {|num| num * 2}

tripler = Proc.new {|num| num * 3}

square = Proc.new {|num| num * num}

add_and_proc(2, 4, doubler)

add_and_proc(2, 4, tripler)

add_and_proc(2, 4, square)
