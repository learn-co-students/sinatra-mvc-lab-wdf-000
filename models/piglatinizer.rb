class PigLatinizer
  attr_accessor :words

  def initialize
    @words = words
  end

  def piglatinize(word)
    abcs = ('a'..'z').to_a
    vowels = ['a', 'e', 'i', 'o', 'u']
    consanants = abcs - vowels

    if vowels.include?(word[0].downcase)
      word + 'way'
    elsif consanants.include?(word[0].downcase) && consanants.include?(word[1]) && consanants.include?(word[2])
      word[3..-1] + word[0..2] + 'ay'
    elsif consanants.include?(word[0].downcase) && consanants.include?(word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif consanants.include?(word[0]) || vowels.include?(word[1].downcase)
      word[1..-1] + word[0] + 'ay'
    end
  end

  def to_pig_latin(text)
    pl_words = []
    words = text.split(" ")
    words.each {|word| pl_words << piglatinize(word)}
    pl_words.join(" ")
  end
end
