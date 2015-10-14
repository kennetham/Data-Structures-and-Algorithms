require_relative 'lib/insertion_sort'

class App
  # Insertion Sort
  numbers = [5, 2, 4, 6, 1, 3]
  insertion_sort = InsertionSort.new
  insertion_sort.sort(numbers)
end