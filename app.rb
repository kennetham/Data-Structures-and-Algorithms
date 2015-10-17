require_relative 'lib/dsag'

class App
  # Result
  result = []

  x = 1
  y = 2

  num_ascending = [1, 2, 3, 4, 5, 6, 7]
  rotation_step = 3

  random_numbers = [5, 2, 8, 4, 6, 1, 10, 3, 9, 7, 11, 12]
  numbers = [27, 17, 3, 16, 13, 10, 1, 5, 7, 12, 4, 8, 9, 0]

  evaluation = [2, 1, '+', 3, '*']

  insertion_sort = InsertionSort.new
  insertion_sort.sort(random_numbers.clone)

  merge_sort = MergeSort.new
  merge_sort.sort(random_numbers.clone)

  heap = Heap.new
  heap.sort(numbers.clone, result)
  p result

  magic_swap = Swap.new
  normal_result = magic_swap.normal(x, y)
  p normal_result

  xor_result = magic_swap.xor(x, y)
  p xor_result

  addsub_result = magic_swap.addsub(x, y)
  p addsub_result

  muldiv_result = magic_swap.muldiv(x, y)
  p muldiv_result

  # Rotate Array
  rotate = RotateArray.new
  rotate.rotate(num_ascending, rotation_step)

  # Reverse Polish
  reverse_polish = ReversePolish.new
  evaluated_results = reverse_polish.evaluate(evaluation)
  puts evaluated_results
end