require 'pry'
class PigLatinizer
  attr_accessor :sentence

  def initialize
    @sentence = sentence
  end

  def piglatinize(word)
    vowels = "aeiouAEIOU".split("")
    consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".split("")

    if vowels.include?(word[0])
      word + "way"
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      word[3..-1] + word[0..2] + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + "ay"
    elsif consonants.include?(word[0])
      word[1..-1] + word[0] + "ay"
    else
      word
    end

  end

  def to_pig_latin(sentence)
    sentence.split(" ").map { |word| piglatinize(word) }.join(" ")
  end
end