class Candies
=begin
  There are N children standing in a line.
  Each child is assigned a rating value.
  You are giving candies to these children subjected to the following requirements:

  1. Each child must have at least one candy.
  2. Children with a higher rating get more candies than their neighbors.

  What is the minimum candies you must give?
=end

  def candy(ratings)
    if ratings.nil? or ratings == 0
      0
    end

    candies = Array.new(ratings.length)
    candies[0] = 1

    for i in 1..ratings.length
      if ratings[i].to_i > ratings[i - 1].to_i
        candies[i] = candies[i - 1] + 1
      else
        candies[i] = 1
      end
    end

    results = candies[ratings.length - 1]

    for j in (ratings.length - 2)..0
      cur = 1

      if ratings[i] > ratings[i + 1]
        cur = candies[i + 1] + 1
      end

      cur = [cur, candies[i]].max
      results += cur
      candies[i] = cur
    end

    results
  end
end