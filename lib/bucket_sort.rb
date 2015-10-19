require_relative 'insertion_sort'

class BucketSort
  private

  def bsort(array_a, n, buckets, m)
    for i in 0..m
      buckets[i] = 0
    end

    for j in 0..n
      buckets[array_a[j]] += 1
    end

    p = 0
    for k in 0..m
      for l in 0..buckets[k]
        array_a[p] = k
        p += 1
      end
    end

    array_a
  end

  public

  def sort(numbers)
    buckets = numbers.inject(Array.new(0)) do |temp, n|
      k = n / 3
      (temp[k] ||= []) << n
      temp
    end

    extract(buckets, numbers)
  end

  private

  def extract(buckets, numbers)
    insertion_sort = InsertionSort.new
    index = 0

    buckets.each do |array_b|
      next if array_b.nil?

      insertion_sort.sort(array_b)

      array_b.each_with_index do |key, value|
        numbers[index] = key
        index += 1
      end
    end

    numbers
  end
end