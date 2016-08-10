class PigLatinizer

  attr_accessor :phrase

  def initialize(phrase = "")
    @phrase = phrase
  end

  def piglatinize(word)
    # punctuation needs to be taken care of somehow...method to implement later...maybe
    match = word.match(/\b([^AaEeIiOoUu]*)([AaEeIiOoUu]*)(\w*)/)
    if match.captures[0] == "" #begins with a vowel
      piglatin = word << "way"
    else #begins with a consonant
      piglatin = match.captures[1] + match.captures[2] + match.captures[0] + "ay"
    end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").collect {|word| piglatinize(word)}.join(" ")
  end

end
