class RotateArray

=begin
Rotate an array of n elements to the right by k steps.
For example, with n = 7 and k = 3,
the array [1,2,3,4,5,6,7] is rotated to [5,6,7,1,2,3,4].
=end

  def rotate(numbers, rotation_step)
    numbers.rotate(rotation_step + 1)
  end

  def reverse(numbers, left, right)
    while left < right
      numbers[left], numbers[right] = numbers[right], numbers[left]
      left += 1
      right -= 1
    end
  end

  def alternative_rotate(numbers, rotation_step)
    i = numbers.length - rotation_step

    reverse(numbers, 0, i - 1)
    reverse(numbers, i, numbers.length - 1)
    reverse(numbers, 0, numbers.length - 1)
  end
end