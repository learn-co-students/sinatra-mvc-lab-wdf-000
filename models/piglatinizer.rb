require 'pry'

class PigLatinizer
 

def piglatinize(word)
    letter = word.split('')
    letter.each_with_index do |l, i|
      if i == 0 && l.downcase.match(/[aeiou]/) 
        return word + 'way'
      elsif i != 0 && l.downcase.match(/[aeiou]/) 
        w = letter.slice!(0..i-1).join('')
        return letter.join('') + w + 'ay'
        # binding.pry
      end
    end
  end


 def to_pig_latin(string)
    string.split.collect{|word| piglatinize(word)}.join(" ")
  end

end
