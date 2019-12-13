class Anagrams

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def compare_words
    vowel_check1 = @word1.match?(/[aeiouy]/i)
    vowel_check2 = @word2.match?(/[aeiouy]/i)

    if !vowel_check1 | !vowel_check2
      return "You need to input actual words!"
    end

    word_dif = @word1.gsub(/[#{@word2}]/i, '') + @word2.gsub(/[#{@word1}]/i, '')
    if word_dif == ""
      return "These words are anagrams"
    elsif word_dif != ""
      return "These words are not anagrams.  The letter(s) that are not in both words are: #{word_dif}"
    else
      return "Logic Fail"
    end
  end

  # def vowel_checker?
  #   vowel_test1 = ""
  #   vowel_test2 = ""
  #   vowel_test2 = @word2 =~ (/[aeiouy]/i)
  #   vowel_test1 = @word1 =~ (/[aeiouy]/i)
  #
  #   puts vowel_test1
  #   puts vowel_test2
  #   # vowel_test = (@word1 =~ (/[aeiouy]/i)) + (@word2 =~ (/[aeiouy]/i))
  #   # if vowel_test == Nil
  #     return vowel_test
  #   # end
  # end

end
