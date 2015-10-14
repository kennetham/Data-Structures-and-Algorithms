# Time Complexity:
#   Best Case: O(n log(n))
#   Average Case: O(n log(n))
#   Worst Case: O(n log(n))
#
# Space Complexity:
#   Worst Case: O(n)

class MergeSort
  public

  def sort(numbers)
    if numbers.length <= 1
      numbers
    else
      # Divide
      mid = (numbers.length / 2).floor
      left = sort(numbers[0..mid - 1])
      right = sort(numbers[mid..numbers.length])

      # Conquer
      merge(left, right)
    end
  end

  private

  def merge(left, right)
    if left.empty?
      right
    elsif right.empty?
      left
    elsif left.first < right.first
      [left.first] + merge(left[1..left.length], right)
    else
      [right.first] + merge(left, right[1..right.length])
    end
  end
end