class PigLatinizer
  attr_accessor :text

  def initialize
    @text = text
  end

  def piglatinize(text)
    # binding.pry
    # @text = @text.downcase
    text = text.split(" ")
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    result = []
    text.each do |word|
      # @cap = false
      translation = ''
      # if word == word.capitalize
        # @cap = true
        # word.downcase!
      # end
      if vowels.include? word[0]
        translation = word + 'way'
        result << translation
      else
        i = word.index(/[aeiouAEIOU]/)
        add = word.slice!(i..-1)
        bang = add + word + "ay"
        result << bang
      end
      # if @cap
        # word.capitalize!
      # end
    end
    @final = result.join(" ")
    # @final = @almost.slice(0,1).capitalize + @almost.slice(1..-1)
    @final
  end

  def to_pig_latin(text)
    piglatinize(text)
  end


end
