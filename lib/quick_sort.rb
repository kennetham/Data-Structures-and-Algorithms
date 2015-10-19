class QuickSort
  public

  def sort(numbers, p, r)
    if p < r
      q = partition(numbers, p, r)
      sort(numbers, p, q - 1)
      sort(numbers, q + 1, r)
    end
  end

  private

  def partition(numbers, p, r)
    pivot = numbers[r]
    i = p - 1

    for j in p..r - 1 do
      if numbers[j] <= pivot
        i = i + 1
        numbers[i], numbers[j] = numbers[j], numbers[i]
      end
    end

    numbers[i + 1], numbers[r] = numbers[r], numbers[i + 1]

    i + 1
  end
end