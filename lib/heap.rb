class Heap
  public

  def sort(numbers, result)
    i = numbers.length / 2 - 1

    while i >= 0
      heapify(numbers, i)
      i -= 1
    end

    result.push(adjust_heap(numbers))
    sort(numbers, result) if numbers.length > 0
  end

  private

  def heapify(numbers, i)
    numbers.each do
      i = (i / 2).floor
      left_index = (2 * i + 1)
      right_index = (2 * i + 2)

      if left_index <= numbers.length - 1 && numbers[left_index] > numbers[i]
        largest = left_index
      else
        largest = i
      end

      if right_index <= numbers.length - 1 && numbers[right_index] > numbers[largest]
        largest = right_index
      end

      if numbers[largest] != numbers[i]
        numbers[i], numbers[largest] = numbers[largest], numbers[i]
        heapify(numbers, largest)
      end
    end
  end

  private

  def build_heap(numbers)
    numbers.size.downto(0) do |index|
      heapify(numbers, index)
    end

    numbers
  end

  private

  def adjust_heap(numbers)
    top = numbers[0]
    numbers[0], numbers[-1] = numbers[-1], numbers[0]
    numbers.pop

    top
  end
end