class Map
  def initialize
    @my_map = []   
  end

  def set(key, value)
    all_keys = []
    @my_map.each do |key_val_pair|
      all_keys << key_val_pair[0]
    end

    if all_keys.include?(key)
      idx = all_keys.find_index(key)
      @my_map[idx][1] = value 
    else
      @my_map << [key, value]
    end
  end

  def get(key)
    @my_map.each do |key_val_pair|
      k, v = *key_val_pair
      return v if k == key
    end
  end

  def delete(key)
    @my_map.each_with_index do |key_val_pair, idx|
      k, v = *key_val_pair
      if k == key
        @my_map.delete_at(idx)
        break
      end
    end
  end

  def show
    puts "["
    @my_map.each do |key_val_pair|
      puts " #{key_val_pair} "
    end
    puts "]"
  end
end

map_1 = Map.new
map_1.show # empty map

puts

map_1.set('a', 20)
map_1.set('c', 50)
map_1.set('d', 16)
map_1.set('j', 92)
map_1.set('j', 18)

map_1.show

puts

p map_1.get('c')
p map_1.get('j')
p map_1.get('a')

puts

map_1.set('u', 226)
map_1.show

puts

p map_1.get('u')

puts

map_1.delete('d')
map_1.show