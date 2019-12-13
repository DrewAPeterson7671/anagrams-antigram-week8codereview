require('rspec')
require('anagram_antigram')

describe('Anagrams#compare_words') do
  it("returns if the two input words are anagrams") do
    anagrams = Anagrams.new("Silent", "Listen")
    expect(anagrams.compare_words()).to(eq("These words are anagrams"))
  end
  it("returns if the two input words are anagrams") do
    anagrams = Anagrams.new("Silent", "Liste")
    expect(anagrams.compare_words()).to(eq("These words are not anagrams.  The letter(s) that are not in both words are: n"))
  end


end
