require('rspec')
require('anagram_antigram')

describe('Anagrams#compare_words') do
  it("returns if the two input words are anagrams") do
    anagrams = Anagrams.new("silent", "listen")
    expect(anagrams.compare_words()).to(eq("These words are anagrams."))
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
    expect(anagrams4.compare_words()).to(eq("These words are anagrams."))
  end
  it("Test to see if actual words and contain vowels") do
    anagrams5 = Anagrams.new("Tea", "TBD")
    expect(anagrams5.compare_words()).to(eq("You need to input actual words!"))
  end
  it("Test to see if actual words and contain vowels") do
    anagrams6 = Anagrams.new("FHC", "Gerald")
    expect(anagrams6.compare_words()).to(eq("You need to input actual words!"))
  end
  it("Test to see if actual words and contain vowels") do
    anagrams7 = Anagrams.new("FHC", "Gerald")
    expect(anagrams7.compare_words()).to(eq("You need to input actual words!"))
  end
  it("Test to see if the words are antigrams") do
    anagrams8 = Anagrams.new("Hi", "Bye")
    expect(anagrams8.compare_words()).to(eq("These words have no letter matches and are antigrams."))
  end
  it("Test another word set to see if the words are antigrams") do
    anagrams9 = Anagrams.new("Remember", "Addition")
    expect(anagrams9.compare_words()).to(eq("These words have no letter matches and are antigrams."))
  end
  it("Test another word set for antigrams with intentional fail") do
    anagrams10 = Anagrams.new("Remember", "Additionr")
    expect(anagrams10.compare_words()).to(eq("These words are not anagrams.  The letter(s) that are not in both words are: emembeAddition"))
  end
  it("Test multiple words for anagrams") do
    anagrams11 = Anagrams.new("I think therefore I am.", "I fear to think I'm here!")
    expect(anagrams11.compare_words()).to(eq("These words are anagrams."))
  end
  it("Test multiple words for antigrams") do
    anagrams11 = Anagrams.new("Fleet Feet Dream.", "Going upd?")
    expect(anagrams11.compare_words()).to(eq("These words have no letter matches and are antigrams."))
  end

end
