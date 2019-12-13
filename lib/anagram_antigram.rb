class Anagrams

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def compare_words
    word_dif = @word1.gsub(/[#{@word2}]/i, '')
    if word_dif == ""
      return "These words are anagrams"
    elsif word_dif != ""
      return "These words are not anagrams.  The letter(s) that are not in both words are: #{word_dif}"
    else
      return "Logic Fail"
    end
  end

end

# anagrams = Anagrams.new("Silent", "Liste")
# puts anagrams.compare_words()
