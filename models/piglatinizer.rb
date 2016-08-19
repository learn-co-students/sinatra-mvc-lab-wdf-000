require 'pry'
class PigLatinizer
  attr_accessor :string

  def initialize(string=nil)
    @string = string
  end

  def first_char(word)
    first = word.split(//).first.downcase
    # binding.pry
  end

  def vowel_or_c?(word)
    vowels = ["a", "e", "i", "o", "u"]
    vowels.include?(first_char(word)) ? true : false
    # binding.pry
  end

  def vowel_word(word)
    "#{word}way"
  end

  def c_word(word)
    # word[1..-1] + first_char(word) + "ay"
    word_chars = []
    w = word
    until vowel_or_c?(w)
      word_chars << w.split(//).shift
      w = w[1..-1]
    end
      w + word_chars.join("") + "ay"

  end

  # def piglatinize
  #   new_array = []
  #   new_array = @string.split(" ").map do |word|
  #     vowel_or_c?(word) ? vowel_word(word) : c_word(word)
  #   end
  #
  #   new_array.join(" ")
  # end

  def piglatinize(phrase)
    new_array = []
    new_array = phrase.split(" ").map do |word|
      vowel_or_c?(word) ? vowel_word(word) : c_word(word)
    end

    new_array.join(" ")
  end

  def to_pig_latin(phrase)
    piglatinize(phrase)
  end

end
#
# h = PigLatinizer.new.piglatinize("please")
# puts h
# # H = PigLatinizer.new("Once upon a time and a very good time it was there was a moocow coming down along the road and this moocow that was coming down along the road met a nice little boy named baby tuckoo").pig_latined
