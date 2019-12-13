class Anagrams

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def compare_words
    # if (vowel_checker(@word1) == false) | (vowel_checker(@word2) == false)
    #   return "You need to input actual words!"
    word_dif = @word1.gsub(/[#{@word2}]/i, '') + @word2.gsub(/[#{@word1}]/i, '')
    if word_dif == ""
      return "These words are anagrams"
    elsif word_dif != ""
      return "These words are not anagrams.  The letter(s) that are not in both words are: #{word_dif}"
    else
      return "Logic Fail"
    end
  end

  def vowel_checker(word_to_check)
    word_to_check.gsub?(/[aeiouy]/i)
  end

end


# puts "vowel" =~ /[aeiouy]/i

# anagrams = Anagrams.new("Silent", "Liste")
# puts anagrams.compare_words()
