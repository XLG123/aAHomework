# Clever Octopus? 
def eat_longest_fish_1(fishes)
  longest_fish = ""
  fishes.each do |fish|
    longest_fish = fish if fish.length > longest_fish.length  
  end
  longest_fish
end

# Dominant Octopus O(n log n)
def eat_longest_fish_2(fishes)
  # merge sort
end

# test
p eat_longest_fish_1(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
 'fiiiissshhhhhh'])
puts

# Slow Dance
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
               "left",  "left-up"]

def slow_dance(dir, tiles_array)
  tiles_array.each_with_index { |tile, idx| return idx if tile == dir }
end

p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)


tiles_hash = {
  "up" => 0, 
  "right-up" => 1, 
  "right" => 2, 
  "right-down" => 3, 
  "down" => 4, 
  "left-down" => 5, 
  "left" => 6,
  "left-up" => 7
}

# Fast Dance
def fast_dance(dir, tiles_hash)
  tiles_hash[dir]
end