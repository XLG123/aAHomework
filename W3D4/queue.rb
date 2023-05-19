class Queue
  def initialize
    @ivar = []
  end

  def enqueue(el)
    @ivar << el
  end

  def dequeue
    @ivar.shift
  end

  def peek
    @ivar.first
  end
end

queue_1 = Queue.new
queue_1.enqueue("KKK")
p queue_1.peek
queue_1.enqueue("KYK")
p queue_1.peek
queue_1.enqueue("YYK")
p queue_1.peek
queue_1.enqueue("YYY")
p queue_1.peek

puts

queue_1.dequeue
p queue_1.peek