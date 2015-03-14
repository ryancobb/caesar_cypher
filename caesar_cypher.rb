def caesar_cipher(sentence, shift)
	new_string = ""

	sentence.each_char { |c|

		case c.ord
		when (65..90)
			c = c.ord + shift.to_i
			if c > 90
				c -= 26
			elsif  c < 65
				c += 26
			end
		when (97..122)
			c= c.ord + shift.to_i
			if c > 122
				c -= 26
			elsif c < 97
				c += 26
			end
		end
		
		new_string << c.chr
	}

	puts new_string

end

puts "Enter your sentence to be encoded:"
sentence = gets.chomp
puts "Enter your encryption shift:"
shift = gets.chomp

caesar_cipher(sentence, shift)

