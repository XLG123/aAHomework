class Stack
  def initialize
    @ivar = []
  end

  def push(el)
    @ivar << el
  end

  def pop
    @ivar.pop
  end

  def peek
    @ivar.last
  end
end

stack_1 = Stack.new
stack_1.push("KKK")
p stack_1.peek
stack_1.push("KYK")
p stack_1.peek
stack_1.push("YYK")
p stack_1.peek
stack_1.push("YYY")
p stack_1.peek

puts

stack_1.pop
p stack_1.peek
