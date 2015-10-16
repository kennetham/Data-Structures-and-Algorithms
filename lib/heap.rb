class Heap
  def max_heapify(numbers)
    i = numbers.length
    left = 2 * i
    right = 2 * i + 1
    largest = i

    if left <= numbers.length && numbers[left] > numbers[largest]
      largest = left
    end

    if right <= numbers.length && numbers[right] > numbers[largest]
      largest = right
    end

    if largest != i
      temp = numbers[i]
      numbers[i] = numbers[largest]
      numbers[largest] = temp

      max_heapify(numbers)
    end

    numbers
  end
end