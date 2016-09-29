
class PigLatinizer
  # attr_accessor :word
 
  def initialize

  end

  def piglatinize(word)
    vowels = [ 'a', 'e', 'i', 'o', 'u']
    
    if vowels.include?(word[0].downcase) 
      pig_latin = word + ("way")
    else
      until vowels.include?(word[0].downcase) do
        word = word + word[0]
        word.gsub!(/^[^aeiou]/, '')
      end
      pig_latin = word + ("ay")
    end
    pig_latin
  end

  def to_pig_latin(string)
    sentence = []
    words_array = string.split(" ")
    words_array.each do |w|
      sentence << piglatinize(w)
    end
    sentence.join(" ")
  end

end

w = PigLatinizer.new
w.piglatinize("I")






