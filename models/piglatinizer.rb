class PigLatinizer


	def to_pig_latin(string)
		string.split(" ").collect do |letters|
			piglatinize(letters)
		end.join(" ")
	end

	def piglatinize(word)
	if !word.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U")
      	let = /^[^aeiou]+/.match(word).to_s
      	new_word = word.gsub(/^#{let}/, "") + let + "ay"
    elsif(word.start_with?("a", "e", "i", "o", "u", "A", "E", "I", "O", "U"))
      new_word = word + "way"
    end
    new_word
  end

end
