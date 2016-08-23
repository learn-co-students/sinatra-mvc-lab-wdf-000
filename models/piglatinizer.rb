require 'pry'
class PigLatinizer
  attr_accessor :text

  def initialize(text = nil)
    @text = text
  end

  def piglatinize(text)
    t = text.split(" ")
    v=["a","e","i","o","u","A","E","I","O","U"]
    new_text = t.map do |word|
       if v.include?(word.split("").first)
          word + "way"
       else
         word = word.split("")
         i = 0
        while !v.include?(word[i]) && i < word.count
          i += 1
        end
        word = word[i..word.count-1]  + word[0..i-1]

        word.join + "ay"
      end
    end
   new_text.join(" ")


end

  def to_pig_latin(text)
    t = text.split(" ")
    v=["a","e","i","o","u","A","E","I","O","U"]
    new_text = t.map do |word|
       if v.include?(word.split("").first)
          word + "way"
       else
         word = word.split("")
         i = 0
        while !v.include?(word[i]) && i < word.count
          i += 1
        end
        word = word[i..word.count-1]  + word[0..i-1]

        word.join + "ay"
      end
    end
   new_text.join(" ")
  end
end
