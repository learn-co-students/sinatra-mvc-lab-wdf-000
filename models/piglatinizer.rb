require 'pry'
class PigLatinizer
  def initialize
    self
  end
  def piglatinize(input)
    @input = input
    self.to_pig_latiner
  end

  def to_pig_latin(input)
    @input = input
    self.to_pig_latiner
  end
  
  def word_to_pig(str = @input)

  str1="aeiou"
  str2=(/\A[AEIOUaeiou]/)
  vowel = str1.scan(/\w/)
  alpha =('a'..'z').to_a
  con = (alpha - vowel).join
  word = str.scan(/\w/)
  if  #first rule
    str =~ str2
    str + "way"
  elsif # second rule
    str != str2
    s = str.slice!(/^[^aeiou]+/)
    str + s + "ay"
  elsif
    word[0.1]=~(/\A[con]/)
    s = str.slice!(/^../)
    str + s + "ay"
  else
    word[0..2]=~(/\A[con]/)
    s = str.slice!(/^.../)
    str + s + "ay"
  end
end

  def to_pig_latiner
    array = @input.split
    array.collect{|w| word_to_pig(w)}.join(" ")
  end

end
