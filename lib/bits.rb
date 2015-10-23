class Bits
  # Bit manipulation for Arithmetic Operations
  def add(x, y)
    while y != 0
      # 'carry' contains common set bits of x and y
      carry = x & y

      # sum of bits x and y
      # at least 1 of the bits is not set
      x ^= y

      # carry is shifted by 1
      y = carry << 1
    end

    x
  end

  def add_recursive(x, y)
    if y == 0
      x
    else
      add_recursive(x ^ y, (x & y) << 1)
    end
  end
end