require 'pry'

class PigLatinizer

  def piglatinize(word)
    words = word.split("")
    if !(words[0] =~ /[aeiou]/i)
        ary = []
        words.each do |letter|
          ary << letter
        end
        @status = true
          words.each do |letter|
            if (letter =~ /[aeiou]/i) == nil && @status
              ary.push(letter)
              ary.shift
            else
              @status = false
            end
        end
        latinword = ary.join
        latinword += "ay"
    else
      word += "way"
    end
  end

  def to_pig_latin(sentence)
    return_string = ""
    sentence.split(" ").each do |word|
      return_string += piglatinize(word) + " "
    end
    return_string.chop
  end

end


# if (word =~ /^[aeiou]/i) != nil
#   word = word + "way"
# elsif (word =~ /pl/i) != nil
#   word = word.rpartition(word[word.index("pl")+1])[2] + word.rpartition(word[word.index("pl")+1])[0] + word.rpartition(word[word.index("pl")+1])[1] + "ay"
# elsif (word =~ /th/i) != nil
#   word = word.rpartition(word[word.index("th")+1])[2] + word.rpartition(word[word.index("th")+1])[0]+word.rpartition(word[word.index("th")+1])[1]+"ay"
# elsif (word =~ /pr/i) != nil
#   word = word.partition(word[word.index("pr")+1])[2] + word.partition(word[word.index("pr")+1])[0]+ word.partition(word[word.index("pr")+1])[1]+"ay"
# else
#   word = word.rpartition(word[0])[2] + word[0] + "ay"
# end
