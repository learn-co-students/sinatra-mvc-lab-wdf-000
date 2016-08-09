class PigLatinizer
  def to_pig_latin(sentence)
    pig_sentence = sentence.split
    pig_sentence.map { |word|  piglatinize(word) }.join(" ")
  end

  def piglatinize(word)
    if word[0].match(/[aeiouAEIOU]/)
      vow_latin(word)
    elsif word[0].match(/^[[:alpha:]]$/)
      con_latin(word)
    end
  end

  def vow_latin(word)
    word + "way"
  end

  def con_latin(word)
    first_vowel = word.scan(/[aeiou]{1}/)[0]
    all_letters = word.split("")
    vowel_index = all_letters.index( first_vowel )
    start_letters = all_letters[vowel_index, all_letters.size]
    end_letters = all_letters[0, vowel_index]
    start_letters.join + end_letters.join + "ay"
  end

end