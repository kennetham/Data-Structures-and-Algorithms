class ReversePolish
  class UnderFlowError < StandardError
  end

=begin
  Evaluate the value of an arithmetic expression
  in Reverse Polish Notation.
  Valid operators are +, -, *, /.
  Each operand may be an integer or another expression.

  For example:
  ["2", "1", "+", "3", "*"] -> ((2 + 1) * 3) -> 9
  ["4", "13", "5", "/", "+"] -> (4 + (13 / 5)) -> 6
=end

  def initialize
    @stack = []
  end

  def evaluate(numbers)
    numbers.each do |n|
      if n.is_a? Numeric
        push(n)
      elsif n.eql?('+')
        rhs = pop
        lhs = pop
        push(rhs + lhs)
      elsif n.eql?('-')
        rhs = pop
        lhs = pop
        push(rhs - lhs)
      elsif n.eql?('*')
        rhs = pop
        lhs = pop
        push(rhs * lhs)
      elsif n.eql?('/')
        rhs = pop
        lhs = pop
        push(rhs / lhs)
      else
        raise "Weird input"
      end
    end

    @stack
  end

  def empty?
    @stack.empty?
  end

  def push(number)
    @stack.push(number)
  end

  def pop
    raise UnderFlowError, "Empty Stack" if empty?
    @stack.pop
  end

  def peek
    @stack.last
  end
end