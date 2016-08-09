class PigLatinizer
  attr_accessor :text

  def initialize(text = nil)
    @text = text
  end

  def piglatinize(word)
    start_with_vowel = word.downcase.start_with?("a", "e", "i", "o", "u")

    if start_with_vowel
      word + "way"
    else
      # word_array = word.split(/[aeiou]/)
      # first_consonants = word_array.shift
      # final_word = word_array.join("") + first_consonants + "ay"

      word.split(/([aeiou].*)/).reverse.join("") + "ay"
      # binding.pry
    end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map { |word| piglatinize(word) }.join(" ")
  end
end
