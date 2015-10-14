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
end