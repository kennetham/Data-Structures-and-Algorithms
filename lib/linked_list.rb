class LinkedList
  class Node
    attr_accessor :next, :previous
    attr_reader   :data

    def initialize(data)
      @data    = data
      @next     = nil
      @previous = nil
    end
  end

  def initialize
    @head = nil
    @tail = nil
  end

  def search(k)
    x = @head

    while x != nil && x.data != k
      x = x.next
    end

    x
  end

  def insert(k)
    node = Node.new(k)

    if @head.nil?
      @head = @tail = node
    else
      @tail.next = node
      node.previous = @tail
      @tail = node
    end
  end

  def delete(node)
    if !node.previous.nil?
      node.previous.next = node.next
    else
      @head = node.next
    end

    if !node.next.nil?
      node.next.previous = node.previous
    else
      @tail = node.previous
    end
  end
end