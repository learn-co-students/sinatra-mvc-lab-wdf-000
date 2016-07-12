
class PigLatinizer

  def piglatinize(word)
    a = word.split('')
    a.each_with_index do |c, i|
      if i == 0 && c.downcase.match(/[aeiou]/) != nil
        return word + 'way'
      elsif i != 0 && c.downcase.match(/[aeiou]/) != nil 
        w = a.slice!(0..i-1).join('')
        return a.join('') + w + 'ay'
      end
    end
  end

  def to_pig_latin(string)
    arr = string.split(' ')
    final = []
    arr.each {|word| final << piglatinize(word) }
    final.join(' ')
  end

end


