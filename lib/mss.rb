class MSS
=begin
  Maximum Sum SubArray
=end

  # Kadane's Algorithm
  def kadane_algorithm(numbers)
    n = numbers.length
    max_current = -1
    max = max_current
    max_sub = []

    for i in 0..n do
      # If previous number is less that 0,
      # set the max current pointer to current number
      if max_current < 0
        max_current = numbers[i].to_i
      else
        # Else, max current pointer + current number = current max pointer
        max_current += numbers[i].to_i
      end

      # Check if max curren pointer is > current max
      # If it is, store that value in max
      if max_current > max
        max = max_current
      end

      # Optional: Store all max into a maximum subarray for audit
      max_sub[i] = max
    end

    p max_sub
    max
  end

  # Alternative version of Max Sum SubArray
  def max_subarray(numbers)
    max_current = 0
    max_end = 0

    for i in 0..numbers.length
      max_end += numbers[i].to_i

      if max_end < 0
        max_end = 0
      end

      if max_current < max_end
        max_current = max_end
      end
    end

    max_current
  end

  # Alternative version 2 of Max Sum SubArray
  def max_subarray_v2(numbers)
    max = numbers[0].to_i
    max_current = numbers[0].to_i

    for i in 1..numbers.length
      max_current = [numbers[i].to_i, max_current + numbers[i].to_i].max
      max = [max, max_current].max
    end

    max
  end
end