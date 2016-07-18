class PigLatinizer

	def piglatinize(string)
		if string.length == 1 || string[0].downcase.match(/[aeiou]/)
			return string + "way"
		else
			index = string.index(/[aeiou]/)
			tmp = string[index..-1] + string[0...index] + "ay"
			return tmp
		end
	end

	def to_pig_latin(string)
		string.split(" ").collect { |x| piglatinize(x) }.join(" ")
	end
end

