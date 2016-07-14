class PigLatinizer

  def initialize
  end

  def piglatinize(word)
    start = (/[aeiou]/i =~ word)
    if start == 0
      new_word = word + "way"
    else
      ending = word.slice!(0..start - 1)
      new_word = word + ending + "ay"
    end
    new_word
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map{|word| piglatinize(word)}.join(" ")

  end


end
