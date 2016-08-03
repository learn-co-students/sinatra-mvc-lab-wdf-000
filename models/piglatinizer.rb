class PigLatinizer 
  
  def piglatinize(word)
    i = word.downcase.index(word.downcase.scan(/[aeiou]/)[0]).to_i
    if i == 0
      word + "way"
    elsif i > 0
      word[i..-1] + word[0...i] + "ay"
    end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").map { |word| piglatinize(word) }.join(" ")
  end
end
