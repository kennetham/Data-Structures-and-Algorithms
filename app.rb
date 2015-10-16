require_relative 'lib/dsag'

class App
  # Insertion Sort
  numbers = [5, 2, 8, 4, 6, 1, 10, 3, 9, 7, 11, 12]

  insertion_sort = InsertionSort.new
  insertion_sort.sort(numbers)

  merge_sort = MergeSort.new
  merge_sort.sort(numbers)

  heap = Heap.new
  puts heap.max_heapify(numbers)
end