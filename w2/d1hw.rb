# class basics
class Cat

    # Initializer
    def initialize(name, color, age)
        @name = name
        @color = color
        @age = age
    end

    # Getter
    def name
        @name
    end

    def color
        @color
    end

    def age
        @age
    end

    # Setter
    def name=(new_name)
        @name = new_name
    end

    def color=(new_color)
        @color = new_color
    end
    
    def age=(number)
        @age = number
    end
end

cat_1 = Cat.new("Sen", "ginger", 2)
cat_2 = Cat.new("Mat", "brown", 3)
cat_3 = Cat.new("Cai", "white", 1)

p cat_1.name, cat_1.color, cat_1.age
p cat_2.age
p cat_3.color

cat_1.name = "Sakura"
cat_1.color = "pink"

cat_2.age = 6
cat_3.name = "Kanada"

p cat_1, cat_2, cat_3
print "--------------------------------\n\n"

class Car
    @@num_wheels = 4
    # NUM_WHEELS = 2
    
    def self.upgrade_to_flying_cars
        # NUM_WHEELS = 0
        @@num_wheels = 0
        
    end

    def initialize(color)
        @color = color
    end

    def color
        @color
    end

    def num_wheels
        # NUM_WHEELS
        @@num_wheels
    end
end

car_1 = Car.new("brown")
car_2 = Car.new("pink")

p car_1 # only the color, num_wheels is not included
p car_1.num_wheels, car_2.num_wheels

Car.upgrade_to_flying_cars

p car_1.num_wheels

car_3 = Car.new("blue")
p car_3.num_wheels

print "--------------------------------\n\n"

class Dog
    def initialize(name, color, age)
        @name = name
        @color = color
        @age = age
    end

    def self.who_is_older(dog_1, dog_2)
        if dog_1.age > dog_2.age
            return dog_1.name
        elsif dog_1.age < dog_2.age
            return dog_2.name
        else
            return nil
        end
    end

    # Setter
    def name=(name)
        @name = name
    end

    def color=(color)
        @color = color
    end

    def age=(age)
        @age = age
    end

    # bark at a person
    def barks_at(person)
        "#{@name} barks at #{person}.\n"
    end

    # Getter
    def name
        @name
    end

    def color
        @color
    end

    def age
        @age
    end
end

dog_1 = Dog.new("Charles", "brown", 3)
dog_2 = Dog.new("Yoora", "ginger", 2)
dog_3 = Dog.new("Ocean", "brown", 6)
dog_4 = Dog.new("Foutou", "white", 5)

p dog_1.name, dog_2.name, dog_3.name, dog_4.name

print "\n"
print "Dog 1's old name is #{dog_1.name}\n"
dog_1.name = "Kai"
print "Dog 1's new name is #{dog_1.name}\n"
p Dog.who_is_older(dog_2, dog_4)
print "\n"

print dog_3.barks_at("Hailey")

print "-------------------------\n"

class String
    def upcase?
        self.upcase == self
    end
end

msg = "hello"
p msg.upcase?

new_msg = "What"
p new_msg.upcase?

another_msg = "THAI"
p another_msg.upcase?

print "-------------------------\n"

class Integer
    def prime?
        return false if self < 2
        (2...self).none? { |divisor| self % divisor == 0 }
    end
end

p -3.prime? # => false
p 2.prime?  # => true
p 10.prime? # => false
p 17.prime? # => true
p 83.prime? # => true
p 99.prime?# => false

print "-------------------------\n"

class Array
    def has_zero?
        self.include?(0)
    end
end

p [1, 0, 2, 4].has_zero?
p [9, 3, 12, 0, 0, 8].has_zero?
p [9, 3, 12, 8].has_zero?

msg_1 = "Even"
msg_2 = "Odd"

num = 1
new_msg = num.even? ? msg_1 : msg_2
p new_msg