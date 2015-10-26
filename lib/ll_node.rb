class LLNode
=begin
  Node for Linked List
=end

  attr_accessor :node, :next, :prev

  def initialize
  end

  def insert(value, next_ptr)
    @node = value
    @next = next_ptr
  end

  def list(node, next_ptr = nil)
    next_ptr ||= ""
    return next_ptr[0..-4] if node.nil?

    list(node.next, next_ptr << "#{node.node} -> ")
  end
end