class MyQueue
  def initialize
    @queue = []
  end

  def enqueue(el)
    queue << el
    return true
  end

  def dequeue
    queue.shift
  end

  def peek
    queue.first
  end

  def empty?
    queue.empty?
  end
  
  # create a shallow copy of the queue to limit user access
  def show
    queue.dup 
  end

  private
  attr_reader :queue
end

queue_1 = MyQueue.new
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

puts

p queue_1.empty?

puts

p queue_1.show

p queue_1.show.reverse!

p queue_1.show