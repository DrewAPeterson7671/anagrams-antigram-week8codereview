require('rspec')
require('anagram_antigram')

describe('Anagrams#compare_words') do
  if("returns if the two input words are anagrams")
    anagrams = Anagrams.new()
    expect(anagrams.compare_words("silent", "listen")).to(eq("These words are anagrams"))
  end  
end
