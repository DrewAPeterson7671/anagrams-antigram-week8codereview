#!/usr/bin/ruby

require ('./lib/anagram_antigram.rb')

puts `clear`

puts "**************************************************"
puts "**************************************************"
puts "Anagrams and Antigrams"
puts "**************************************************"
puts "**************************************************"
puts "=================================================="

puts "Please enter the first word."
word1 = gets.chomp
puts "Please enter the second word."
word2 = gets.chomp


anagram = Anagrams.new(word1, word2)
puts "=================================================="
puts "=================================================="
p anagram.compare_words
puts "=================================================="
puts "=================================================="
