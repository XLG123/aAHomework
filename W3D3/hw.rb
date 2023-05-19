# def sum_to(n)
#   return nil if n < 0
#   return 1 if n == 1
#   n + sum_to(n - 1)
# end

# def add_numbers(arr)
#   return nil if arr.empty?
#   return arr[0] if arr.length == 1
#   arr.pop + add_numbers(arr)
# end

# def gamma_fnc(n)
#   return nil if n <= 0
#   return 1 if n == 1
#   (n-1) * gamma_fnc(n - 1)
# end

# def ice_cream_shop(flavors, favorite)
#   return false if flavors.empty?
#   if flavors.first == favorite
#     return true
#   else
#     ice_cream_shop(flavors.drop(1), favorite)
#   end
# end

# def reverse(string)
#   return "" if string.empty?
#   string[-1] + reverse(string[0..-2])
# end



# # Test Cases
# p sum_to(5)  # => returns 15 => 5 + 4 + 3 + 2 + 1
# p sum_to(1)  # => returns 1
# p sum_to(9)  # => returns 45
# p sum_to(-8)  # => returns nil

# puts

# # Test Cases
# p add_numbers([1,2,3,4]) # => returns 10
# p add_numbers([3]) # => returns 3
# p add_numbers([-80,34,7]) # => returns -39
# p add_numbers([]) # => returns nil

# puts

# # Test Cases
# p gamma_fnc(0)  # => returns nil
# p gamma_fnc(1)  # => returns 1
# p gamma_fnc(4)  # => returns 6
# p gamma_fnc(8)  # => returns 5040

# puts

# # Test Cases
# p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
# p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
# p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
# p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
# p ice_cream_shop([], 'honey lavender')  # => returns false

# puts

# # Test Cases
# p reverse("house") # => "esuoh"
# p reverse("dog") # => "god"
# p reverse("atom") # => "mota"
# p reverse("q") # => "q"
# p reverse("id") # => "di"
# p reverse("") # => ""

# puts

# def upcase(str)
#   return str.upcase if str.length <= 1
#   str[0].upcase + upcase(str[1..-1])
# end

# def iterative_upcase(str)
#   str.each_char.inject("") do |upcased_str, c|
#     upcased_str << c.upcase
#   end
# end

# p upcase("")
# p upcase("what's on the floor")
# p upcase("flower two flower three")
# p iterative_upcase("desk no desk no")
# p iterative_upcase("yes yes yes")

# puts

def quick_sort(arr)
  return arr if arr.length <= 1
  pivot = arr.sample
  pivot_idx = arr.find_index(pivot)

  left_side = []
  right_side = []

  arr.each_with_index do |num, idx|
    if idx != pivot_idx
      if num < pivot
        left_side << num
      else
        right_side << num
      end
    end
  end

  quick_sort(left_side) + [pivot] + quick_sort(right_side)
end

# p quick_sort([-2, 1, -9, 9, 3, -6, 0, 7, 4, 5, -1, -12, 10, -5, -7])

# puts

# p quick_sort([-2, 1, -9, 9, 3, -6, 0, 7, 4, 5, -1, -12, 10, -5, -7])

def bubble_sort(arr)
  sorted = false
  while !sorted
    sorted = true
    (0...arr.length-1).each do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end
  end
  arr
end


def quick_sort(arr)
  return arr if arr.length <= 1

  random_pivot = arr.sample
  random_pivot_idx = arr.find_index(random_pivot)

  left = []
  right = []

  arr.each_with_index do |num, idx|
    if idx != random_pivot_idx
      if num < random_pivot
        left << num
      else
        right << num
      end
    end
  end

  quick_sort(left) + [random_pivot] + quick_sort(right)
end


def merge_sort(arr)
  return arr if arr.empty? || arr.length == 1

  mid_idx = arr.length / 2
  left = arr[0...mid_idx]
  right = arr[mid_idx..-1]

  merge(merge_sort(left), merge_sort(right))
end

def merge(left, right)
  arr = []

  while left.length > 0 && right.length > 0
    if left.first < right.first
      arr << left.shift
    else
      arr << right.shift
    end
  end

  arr + left + right
end


def bsearch(arr, target)
  return nil if arr.empty?

  mid_idx = arr.length / 2

  case target <=> arr[mid_idx]
  when -1
    bsearch(arr[0...mid_idx], target)
  when 0
    mid_idx
  when 1
    valid_idx = bsearch(arr[mid_idx+1..-1], target)
    valid_idx += (mid_idx+1) if valid_idx
  end
end

p bubble_sort([-2, 1, -9, 9, 3, -6, 0, 7, 4, 5, -1, -12, 10, -5, -7])
p bubble_sort([])

p quick_sort([-2, 1, -9, 9, 3, -6, 0, 7, 4, 5, -1, -12, 10, -5, -7])
p quick_sort([])

p merge_sort([-2, 1, -9, 9, 3, -6, 0, 7, 4, 5, -1, -12, 10, -5, -7])
p merge_sort([])

p bsearch([-2, -1, 2, 8, 19], 0)
p bsearch([-2, -1, 2, 8, 19], 2)
p bsearch([-2, -1, 2, 8, 19], 19)
p bsearch([-2, -1, 2, 8, 19], -1)
