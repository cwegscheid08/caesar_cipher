class CaesarCipher
	attr_accessor :string, :number
end

puts "Give me a word..."
@string = gets.chomp
puts "Now a number..."
@number = gets.chomp

def caesar_cipher(string, number)
	word = String.new
	string.split("").each do |char| 	
	 	char.match(/[\s\W]+/) != nil ? "" : number.to_i.times { char = char.next }
 		word += char[-1]
 	end
	return word
end
puts caesar_cipher(@string, @number)