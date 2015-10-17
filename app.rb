require_relative 'lib/dsag'

class App
  # Result
  result = []

  # Insertion Sort
  random_numbers = [5, 2, 8, 4, 6, 1, 10, 3, 9, 7, 11, 12]
  numbers = [27, 17, 3, 16, 13, 10, 1, 5, 7, 12, 4, 8, 9, 0]

  insertion_sort = InsertionSort.new
  insertion_sort.sort(random_numbers.clone)

  merge_sort = MergeSort.new
  merge_sort.sort(random_numbers.clone)

  heap = Heap.new
  heap.sort(numbers.clone, result)
  p result
end