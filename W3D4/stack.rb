class Stack
  def initialize
    @stack = []
  end

  def push(el)
    stack << el
    self
  end

  def pop
    stack.pop
  end

  def peek
    stack.last
  end

  def size
    stack.length
  end

  def empty?
    stack.empty?
  end

  def inspect
    "Stack size: #{self.size}"
  end

  private
  attr_reader :stack
end

stack_1 = Stack.new
p stack_1.push("KKK")
# p stack_1.peek
p stack_1.push("KYK")
# p stack_1.peek
p stack_1.push("YYK")
# p stack_1.peek
p stack_1.push("YYY")
# p stack_1.peek

puts

stack_1.pop
p stack_1.peek