class PigLatinizer

  def piglatinize word
    if word[0].match(/[aeiou]/i)
      word + "way" # should be "yay"?
    else
      word.gsub(/^[^aeiou]+/,"") + word.match(/^[^aeiou]+/).to_s + "ay"
    end
  end

  def to_pig_latin phrase
    phrase.split(/\s+/).map{|word| piglatinize word }.join(" ")
  end

end
