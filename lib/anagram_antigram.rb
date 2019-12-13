class Anagrams

  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def compare_words
    word_dif = @word1.gsub(/[#{@word2}]/i, '')
    return word_dif
    # word1_array = @word1.split()
    # word2_array = @word2.split()
    # puts word1_array
    # puts word2_array
  end

end

# return anagrams = Anagrams.new("silent", "listen")
# @word1 = "Silent"
# @word2 = "Listen"
# word_dif = @word1.gsub(/[#{@word2}]/i, '')
# return "liste".scan /Silent/i
