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
  min_numbers = [152, 2, 100, 68, 25, 31, 47, 5, 2, 214, 62, 33, 4, 92, 30, 54, 72, 1, 88, 11, 23, 729, 32, 85, 77, 12, 18]

  evaluation = [2, 1, '+', 3, '*']
  evaluate_expression = '4 13 5 / +'

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
  evaluated_results_v2 = reverse_polish.evaluate_v2(evaluate_expression)
  evaluated_results
  p evaluated_results_v2

  # Breadth-First-Search
  node_1 = Node.new('1')
  node_2 = Node.new('2')
  node_3 = Node.new('3')
  node_4 = Node.new('4')
  node_5 = Node.new('5')
  node_6 = Node.new('6')
  node_7 = Node.new('7')
  node_8 = Node.new('8')

  graph = Graph.new
  graph.add_edge(node_1, node_2)
  graph.add_edge(node_2, node_3)
  graph.add_edge(node_3, node_4)
  graph.add_edge(node_4, node_5)
  graph.add_edge(node_5, node_7)
  graph.add_edge(node_3, node_6)
  graph.add_edge(node_6, node_8)
  graph.add_edge(node_2, node_4)
  graph.add_edge(node_4, node_6)
  graph.add_edge(node_7, node_8)

  path = BFS.new(graph, node_2).shortest_path(node_8)
  path.each do |v|
    puts v
  end

  # Quick Sort
  qs_numbers = random_numbers.clone
  p qs_numbers

  quick_sort = QuickSort.new
  quick_sort.sort(qs_numbers, 0, random_numbers.length - 1)
  p qs_numbers

  rqs_numbers = random_numbers.clone
  p rqs_numbers

  quick_sort.randomized_sort(rqs_numbers, 0, random_numbers.length - 1)
  p rqs_numbers

  trs_numbers = random_numbers.clone
  p trs_numbers

  quick_sort.tail_recursive_sort(trs_numbers, 0, random_numbers.length - 1)
  p trs_numbers

  # Counting Sort
  array_b = []
  counting_sort = CountingSort.new
  p counting_sort.sort(random_numbers.clone)
  p counting_sort.counting_sort(random_numbers.clone, array_b, random_numbers.length)

  # Bucket Sort
  bucket_sort = BucketSort.new
  p bucket_sort.sort(random_numbers.clone)

  # Minimum
  minimum = Minimum.new
  p minimum.find_min(min_numbers.clone)

  # Stack
  stack_numbers = num_ascending.clone
  stack = Stack.new
  stack.empty?(stack_numbers)
  stack.push(stack_numbers, 8)
  stack.pop(stack_numbers)

  # Queue
  queue = Queue.new
  queue.enqueue(1)
  queue.enqueue(2)
  queue.dequeue

  # Linkedlist
  linked_list = LinkedList.new
  linked_list.insert(5)
  linked_list.insert(6)
  linked_list.insert(8)
  linked_list.search(6)
end