class PigLatinizer

	def piglatinize(word)
		first_letter = word[0]
		second_letter = word[1]
		first_three_letters = word[0..2]
		if first_three_letters.downcase == "spr" || first_three_letters.downcase == "str"
			word.slice!(0..2)
			word << first_three_letters + "ay"
		elsif first_letter.downcase[/[aeoui]/]
			word << "way"
		elsif first_letter.downcase[/[bcdfghjklmnpqrstvwxyz]/]
			if second_letter[/[lrhk]/]
				word.slice!(0..1)
				word << first_letter + second_letter + "ay"
			else
				word.slice!(0)
				word << first_letter + "ay"
			end
		end
	end

	def to_pig_latin(string)
		string.split.collect{|word| piglatinize(word)}.join(" ")
	end
end