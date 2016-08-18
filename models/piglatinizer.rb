class PigLatinizer
  attr_accessor :phrase_array

  def split_string(phrase)
    phrase.split
  end

  def piglatinize(word)
    if "aeiouAEIOU".include?(word[0])
        vowel_method(word)
    else
      consonant_method(word)
    end
  end

  def to_pig_latin(phrase)
    arrayay = split_string(phrase).map do |word|
      piglatinize(word)
    end
    arrayay.join(" ")
  end

  def consonant_method(word)
    while !"aeiouAEIOU".include?(word[0])
      first = word.slice!(0)
      word = word + first
    end
    word + "ay"
  end

  def vowel_method(word)
    word + "way"
  end
end