class Anagrams

  def initialize(word1, word2)
    @word1 = punctuation_remove(word1)
    @word2 = punctuation_remove(word2)
  end

  def compare_words

    if !vowel_check(@word1) | !vowel_check(@word2)
      return "You need to input actual words!"
    end

    word_dif = word_dif()
    if word_dif == ""
      return "These words are anagrams."
    elsif word_dif.length == word_length()
      return "These words have no letter matches and are antigrams."
    elsif word_dif != ""
      return "These words are not anagrams.  The letter(s) that are not in both words are: #{word_dif}"
    else
      return "Logic Fail"
    end
  end

  def punctuation_remove(punc_word)
    return punc_word.gsub(/\W/, '')
  end

  def vowel_check(vowel_word)
    return vowel_word.match?(/[aeiouy]/i)
  end

  def word_dif
    return @word1.gsub(/[#{@word2}]/i, '') + @word2.gsub(/[#{@word1}]/i, '')
  end

  def word_length
    return @word1.length + @word2.length
  end

end
