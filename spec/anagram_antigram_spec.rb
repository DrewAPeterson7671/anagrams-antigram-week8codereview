require('rspec')
require('anagram_antigram')

describe('Anagrams#compare_words') do
  it("returns if the two input words are anagrams") do
    anagrams = Anagrams.new("silent", "listen")
    expect(anagrams.compare_words()).to(eq("These words are anagrams"))
  end
  it("returns if the two input words are not anagrams, second word missing character") do
    anagrams2 = Anagrams.new("silent", "liste")
    expect(anagrams2.compare_words()).to(eq("These words are not anagrams.  The letter(s) that are not in both words are: n"))
  end
  it("returns if the two input words are not anagrams, first word missing character") do
    anagrams3 = Anagrams.new("silen", "listen")
    expect(anagrams3.compare_words()).to(eq("These words are not anagrams.  The letter(s) that are not in both words are: t"))
  end
  it("test to see if case insensitive") do
    anagrams4 = Anagrams.new("TeA", "Eat")
    expect(anagrams4.compare_words()).to(eq("These words are anagrams"))
  end
end
