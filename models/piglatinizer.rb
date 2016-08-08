require'pry'

class PigLatinizer

  def piglatinize(word)
    # binding.pry
    if word.start_with?('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U')
      word << "way"
    else 
      last_letter = word.slice!(0)
      word << last_letter
      until word[0].start_with?('a', 'e', 'i', 'o', 'u')
        last_letter = word.slice!(0)
        word << last_letter
      end
      word << "ay"
    end
  end

  def to_pig_latin(words)
    array = words.split(' ')
    final_string = []
    array.each do |word|
      final_string << self.piglatinize(word)
    end
    final_string.join(' ')
  end

end