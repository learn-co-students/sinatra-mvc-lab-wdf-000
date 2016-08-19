class PigLatinizer
  attr_accessor :text
  def initialize
  end

  def piglatinize(text)
    count = 0
    original_text = text
    text = text.split(//)

    until count == 1
      
      if is_vowel? text[0]
        if text.join() == original_text  
          text << "way"
        else
          text << "ay"
        end
        count += 1
      else
        text = is_consonant(text)
      end

    end
    text.join()
  end

  def is_consonant(text)
      first_ch = text[0]
      text.shift
      text.push(first_ch)
  end

  def is_vowel?(letter)
    ["a","e","i","o","u"].include? (letter.downcase)
  end

  def to_pig_latin(sentence)
    result = []
    sentence.split().each do |word|
      result << piglatinize(word)
    end
    result.join(" ")

  end
end