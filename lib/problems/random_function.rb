class RandomFunction
=begin
  Given a function which produces a random integer
  in the range 1 to 5, write a function which produces
  a random integer in the range 1 to 7.
=end

  def given_func
    rand = Random.new

    rand.rand(1..5)
  end

  def magic_func
    big_rand = given_func * 100000 +
               given_func * 10000 +
               given_func * 1000 +
               given_func * 100 +
               given_func * 10 +
               given_func * 1

    (big_rand % 7) + 1
  end
end