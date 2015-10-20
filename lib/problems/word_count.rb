class WordCount
=begin
Write a program that given a phrase can count the occurrences of each word in that phrase.

For example for the input "olly olly in come free"

olly: 2
in: 1
come: 1
free: 1

=end

  def count(sentence)
    occurance = {}
    word = sentence.split

    word.each do |w|
      if occurance.has_key?(w)
        occurance[w] += 1
      else
        occurance[w] = 1
      end
    end

    occurance
  end
end