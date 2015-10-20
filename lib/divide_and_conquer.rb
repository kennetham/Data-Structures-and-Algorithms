class DivideAndConquer
  INF = -1.0/0

  private

  def max(a, b)
    (a > b) ? a : b
  end

  private

  def three_max(a, b, c)
    max(max(a, b), c)
  end

  private

  def find_max_crossing_subarray(numbers, low, mid, high)
    left_sum = INF
    sum = 0

    mid.downto(low) do |i|
      sum = sum + numbers[i]

      if sum > left_sum
        left_sum = sum
      end
    end

    right_sum = INF
    sum = 0

    for j in (mid + 1)..high
      sum = sum + numbers[j]

      if sum > right_sum
        right_sum = sum
      end
    end

    left_sum + right_sum
  end

  public

  def find_max_subarray(numbers, low, high)
    if low == high
      numbers[low]
    end

    mid = (low + high) / 2

    three_max(find_max_subarray(numbers, low, mid), find_max_subarray(numbers, mid + 1, high), find_max_crossing_subarray(numbers, low, mid, high))
  end

  public

  # Solve using Dynamic Programming
  # http://stackoverflow.com/questions/7943903/maximum-subarray-of-an-array-with-integers
  def solve(numbers)
    max, head, tail = 0, 0, 0
    cur_head = 0
    sum = [[0, numbers[0]].max] # base case

    (1...numbers.size).each do |j|
      sum[j] = [0, sum[j-1] + numbers[j]].max # bottom-up
      cur_head = j if sum[j - 1] == 0 and sum[j] > 0

      if sum[j] > max
        head = cur_head
        tail = j
        max = sum[j]
      end
    end

    return max, head, tail
  end
end