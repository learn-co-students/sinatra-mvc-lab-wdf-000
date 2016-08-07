class PigLatinizer

  attr_accessor :phrase

  def initialize(phrase = nil)
    @phrase = phrase
  end

  def piglatinize(phrase)
    if starts_with_vowel(phrase)
      phrase + "way"
    else
      # splits on first vowel returning array
      # reverses array, joins elements and adds "ay"
      phrase.split(/([aeiou].*)/).reverse.join + "ay"
    end
  end

  def to_pig_latin(string)
    words = string.split(" ")
    words.map {|word| piglatinize(word)}.join(" ")
  end

  def starts_with_vowel(phrase)
    "aeoui".include?(phrase[0].downcase)
  end

end