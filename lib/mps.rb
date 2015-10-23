class MPS
=begin
    Maximum Sum SubArray
=end

  # Kadane's Algorithm
  def kadane_algorithm(numbers)
    n = numbers.length
    max_current = -1
    max_neg = 1
    max = max_current

    for i in 0..n
      if numbers[i].to_i == 0
        max_neg = 1
        max_current = 1
      end

      if numbers[i].to_i < 0
        max_current *= numbers[i].to_i
      else
        max_current = numbers[i].to_i
      end

      max_neg *= numbers[i].to_i

      if max < max_neg
        max = max_neg
      end

      if max < max_current
        max = max_current
      end
    end

    max
  end
end