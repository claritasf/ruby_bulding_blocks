def caesar_cipher (string, shift_factor)
	letters = string.split("")
	alphabet = ("a".."z").to_a
	cipher_number = letters.map do |d|
		if alphabet.index(d) != nil
			alphabet.index(d) + shift_factor 
		else
			d = -1
		end
	end
	cipher_number_new = cipher_number.collect do |x|
		if x > 25
			x -= 26
		else
			x
		end
	end
	cipher_letter = cipher_number_new.each_with_index.map do |x, i| 
		if x != -1
			alphabet[x]
		else
			letters[i]
		end
	end
	cipher_string = cipher_letter.join
	puts cipher_string
end

puts "Write a text you want to Caesar Cipher"
string = gets.chomp.downcase
puts "What is the shift factor for Cipher"
shift_factor = gets.chomp.to_i

caesar_cipher(string, shift_factor)