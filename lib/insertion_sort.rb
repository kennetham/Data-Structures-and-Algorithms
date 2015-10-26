# Time Complexity:
#   Best Case: O(n)
#   Average Case: O(n^2)
#   Worst Case: O(n^2)
#
# Space Complexity:
#   Worst Case: O(1)

class InsertionSort
  def sort(numbers)
    (1..numbers.length - 1).each do |i|
      value_to_insert = numbers.delete_at(i)

      insertion_index = i
      insertion_index -= 1 while insertion_index > 0 && value_to_insert < numbers[insertion_index - 1]

      numbers.insert(insertion_index, value_to_insert)
    end

    numbers
  end

  def alternate_sort(numbers)
    (1..numbers.length - 1).each do |i|
      j = i

      while j > 0 and numbers[j - 1] > numbers[j]
        numbers[j], numbers[j - 1] = numbers[j - 1], numbers[j]
        j -= 1
      end
    end

    numbers
  end
end