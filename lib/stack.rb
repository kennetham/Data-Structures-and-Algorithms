class Stack
  def empty?(numbers)
    top = numbers.length - 1

    if numbers[top] == nil
      true
    else
      false
    end
  end

  def push(numbers, x)
    top = numbers.length
    numbers[top] = x

    # Or
    # numbers.push(x)
  end

  def pop(numbers)
    if empty?(numbers)
      raise "Underflow"
    else
      numbers.pop
    end
  end
end