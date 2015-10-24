class CheckIfArrayElementsConsecutive
=begin
  Given an unsorted array of numbers, write a function that returns true if array consists of consecutive numbers.

  Examples:
  a) If array is {5, 2, 3, 1, 4}, then the function should return true
     because the array has consecutive numbers from 1 to 5.

  b) If array is {83, 78, 80, 81, 79, 82}, then the function should return true
     because the array has consecutive numbers from 78 to 83.

  c) If the array is {34, 23, 52, 12, 3 }, then the function should return false
     because the elements are not consecutive.

  d) If the array is {7, 6, 5, 5, 3, 4}, then the function should return false
     because 5 and 5 are not consecutive.

Time Complexity: O(n)
Space Complexity: O(n)
=end

  # Method uses visited array
  def consecutive(numbers)
    n = numbers.length

    # If length < 1 -> nothing to consecutive with
    if n < 1
      false
    end

    # Step 1 : Identify the maximum & minimum number from the array
    _min = numbers[0]
    _max = numbers[0]

    # Minimum
    for i in 1...n
      if numbers[i].to_i < _min
        _min = numbers[i].to_i
      end
    end

    # Maximum
    for j in 1...n
      if numbers[j].to_i > _max
        _max = numbers[j].to_i
      end
    end

    puts "min #{_min} : max #{_max}"

    # Step 2 : Check if max - min + 1 == n,
    # then check all elements
    if _max - _min + 1 == n
      visited = []

      # Step 3 : Check if the visited number is true or false
      # If visited once, true, hence duplicates -> false
      # Each element appears only once > distinct
      for k in 0...n
        if visited[numbers[k] - _min]
          false
        end

        visited[numbers[k] - _min] = true
      end

      # for k in 0...n
      #   if numbers[k].to_i < 0
      #     m = -(numbers[k].to_i - _min)
      #     puts "#{numbers[k]} :: #{m}"
      #   else
      #     m = numbers[k].to_i - _min
      #     puts "#{numbers[k]} :: #{m}"
      #   end
      #
      #   # If m is negative, repetition
      #   if numbers[m] > 0
      #     numbers[m] = -numbers[m]
      #   else
      #     false
      #   end
      # end

      return true
    end

    # max - min + 1 != n
    false
  end
end