class PigLatinizer
  attr_reader :words
  def initialize
    
  end
  def piglatinize(string)
    words = string.split
    words.map! do |w|
      if w[0..2] == "spr" || w[0..1] == "St"
	w[3..-1] + w[0..2] + "ay"
      elsif w[0..1] == "pl" || w[0..1] == "th" || w[0..1] == "pr" || w[0..1] == "wh" || w[0..1] == "sk"
	w[2..-1] + w[0..1] + "ay"
      elsif w[0].match(/[aeiou]/i)
	w + "way"
      else
	w[1..-1] + w[0] + "ay"
      end
    end
    words.join(" ")
  end
  def to_pig_latin(phrase)
    piglatinize(phrase)
  end
end
