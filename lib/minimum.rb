class Minimum
  def find_min(numbers)
    _min = numbers[0]

    for i in 1...numbers.length
      if _min > numbers[i]
        _min = numbers[i]
      end
    end

    _min
  end
end