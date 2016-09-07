class PigLatinizer

  attr_accessor :text

  def initialize(text = nil)
    @text = text
  end

  def piglatinize(word)
    response = ""
    if word.downcase.start_with?("a","e","i","o","u","A","E","I","O","U")
      response = word + "way"
    else
      match = /\b([bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]+)(\w+)/.match(word)
      response = match[2] + match[1] +"ay"
    end
  end

  def to_pig_latin(sentence)
    sentence.split.map do |word|
      piglatinize(word)
    end.join(" ")
  end


end
