require "byebug"

class Dog
    # Accessor
    attr_accessor :name, :color, :age

    def initialize(name, color, age)
        @name = name
        @color = color
        @age = age
    end
    
    def ==(another_dog)
        self.name == another_dog.name
    end

    # Getter
    # attr_reader :name, :color, :age

    # Setter
    # attr_writer :name, :color, :age 

end

dog_1 = Dog.new("first dog", "black", "3")
p dog_1.name, dog_1.color, dog_1.age

puts

dog_1.color = "green"
dog_1.age = 1
p dog_1.name, dog_1.color, dog_1.age

puts

dog_2 = Dog.new("second dog", "white", 6)
p dog_2.name, dog_2.color, dog_2.age

puts

dog_2.name = "Sakura"
p dog_2

puts
msg_1 = "Same"
msg_2 = "Different"
if dog_1 == dog_2
    p msg_1
else
    p msg_2
end

dog_2.name = "first dog"
if dog_1 == dog_2
    p msg_1
else
    p msg_2
end

puts

# Return the square root of a number if that number is positive.
def sqrt(num)
    # debugger
    unless num >= 0
        raise ArgumentError.new "Cannot take sqrt of neagtive number"
    end

    (1...num).each { |i| return i if i * i == num }
end

def main
    while true
        puts "Please input a number: "
        num = gets.chomp.to_i

        begin
            sqrt(num)
        rescue ArgumentError => e
            puts "Couldn't take the square root of #{num}"
            puts "Error was: #{e.message}"
        end
    end
end

p sqrt(4)
p sqrt(9)
p sqrt(16)
p sqrt(169)