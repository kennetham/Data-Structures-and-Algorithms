class Swap
  def normal(x, y)
    temp = x
    x = y
    y = temp

    [x, y]
  end

  def xor(x, y)
    x ^= y
    y = x ^ y
    x ^= y

    [x, y]
  end

  def addsub(x, y)
    x += y
    y = x - y
    x -= y

    [x, y]
  end

  def muldiv(x, y)
    x *= y
    y = x / y
    x /= y

    [x, y]
  end
end