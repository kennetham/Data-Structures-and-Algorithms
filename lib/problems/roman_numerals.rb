class RomanNumerals
=begin
  Write a function to convert from normal numbers to Roman Numerals: e.g.

The Romans were a clever bunch. They conquered most of Europe and ruled
it for hundreds of years. They invented concrete and straight roads and
even bikinis. One thing they never discovered though was the number
zero. This made writing and dating extensive histories of their exploits
slightly more challenging, but the system of numbers they came up with
is still in use today. For example the BBC uses Roman numerals to date
their programmes.

The Romans wrote numbers using letters - I, V, X, L, C, D, M. (notice
these letters have lots of straight lines and are hence easy to hack
into stone tablets).

 1  => I
10  => X
 7  => VII
There is no need to be able to convert numbers larger than about 3000.
(The Romans themselves didn't tend to go any higher)

Wikipedia says: Modern Roman numerals ... are written by expressing each
digit separately starting with the left most digit and skipping any
digit with a value of zero.

To see this in practice, consider the example of 1990.

In Roman numerals 1990 is MCMXC:

1000=M
900=CM
90=XC

2008 is written as MMVIII:

2000=MM
8=VIII

See also: http://www.novaroma.org/via_romana/numbers.html
=end

  ROMAN_MAP = { 1 => "I",
                4 => "IV",
                5 => "V",
                9 => "IX",
                10 => "X",
                40 => "XL",
                50 => "L",
                90 => "XC",
                100 => "C",
                400 => "CD",
                500 => "D",
                900 => "CM",
                1000 => "M" }

  def translate(numbers)
    numeric = numbers.to_s

    _thousand = process_thousand(numeric[0])
    _hundred = process_hundred(numeric[1])
    _ten = process_ten(numeric[2])
    _one = process_one(numeric[3])

    roman_numerals = _thousand + _hundred + _ten + _one

    roman_numerals
  end

  def process_thousand(number)
    thousands = ""

    for i in 0...number.to_i
      thousands += ROMAN_MAP[1000]
    end

    thousands
  end

  def process_hundred(number)
    hundreds = ""

    if number.to_i < 4
      for i in 0...number.to_i
        hundreds += ROMAN_MAP[100]
      end
    elsif number.to_i == 4
      hundreds = ROMAN_MAP[400]
    elsif number.to_i == 5
      hundreds = ROMAN_MAP[500]
    elsif number.to_i > 4 and number.to_i < 9
      remaining = number.to_i - 5
      hundreds += ROMAN_MAP[500]

      for j in 0...remaining.to_i
        hundreds += ROMAN_MAP[100]
      end
    elsif number.to_i == 9
      hundreds = ROMAN_MAP[900]
    end

    hundreds
  end

  def process_ten(number)
    tens = ""

    if number.to_i < 4
      for i in 0...number.to_i
        tens += ROMAN_MAP[10]
      end
    elsif number.to_i == 4
      tens = ROMAN_MAP[40]
    elsif number.to_i == 5
      tens = ROMAN_MAP[50]
    elsif number.to_i > 5 and number.to_i < 9
      remaining = number.to_i - 5
      tens += ROMAN_MAP[50]

      for j in 0...remaining.to_i
        tens += ROMAN_MAP[10]
      end
    elsif number.to_i == 9
      tens = ROMAN_MAP[90]
    end

    tens
  end

  def process_one(number)
    ones = ""

    if number.to_i < 4
      for i in 0...number.to_i
        ones += ROMAN_MAP[1]
      end
    elsif number.to_i == 4
      ones = ROMAN_MAP[4]
    elsif number.to_i == 5
      ones = ROMAN_MAP[5]
    elsif number.to_i > 5 and number.to_i < 9
      remaining = number.to_i - 5
      ones += ROMAN_MAP[5]

      for j in 0...remaining.to_i
        ones += ROMAN_MAP[1]
      end
    elsif number.to_i == 9
      ones = ROMAN_MAP[9]
    end

    ones
  end
end