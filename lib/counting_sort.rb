class CountingSort
  public

  def counting_sort(array_a, array_b, k)
    array_c = []

    for j in 0..k
      array_c[j] = 0
    end

    array_a.each do |m|
      array_c[m] = array_c[m] + 1
    end

    for n in 1..k
      array_c[n] = array_c[n] + array_c[n - 1]
    end

    (array_a.length - 1).downto(0) do |p|
      array_b[array_c[array_a[p]] - 1] = array_a[p]
      array_c[array_a[p]] = array_c[array_a[p]] - 1
    end

    array_b
  end

  public

  def sort(numbers)
    max = numbers.max
    min = numbers.min
    buckets = [0] * (max - min + 1)
    result = [-1] * numbers.length

    numbers.each { |i| buckets[i - min] += 1 }

    for i in 0...numbers.length
      j = 0
      count = 0

      while j < numbers[i] - min
        count += buckets[j]
        j += 1
      end

      count += 1 until result[count] == -1
      result[count] = numbers[i]
    end

    result
  end
end