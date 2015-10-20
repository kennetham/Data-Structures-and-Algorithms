class Queue
  def initialize
    @head = 0
    @tail = 0
    @queue = []
  end

  def empty?
    @head == @tail ? true : false
  end

  def enqueue(x)
    @queue[@tail] = x
    @tail == @queue.length ? @tail = 1 : @tail += 1
  end

  def dequeue
    x = @queue[@head]
    @head == @queue.length ? @head = 1 : @head += 1

    x
  end
end