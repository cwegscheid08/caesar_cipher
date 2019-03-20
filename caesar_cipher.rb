require 'sinatra'
if development? 
	require 'sinatra/reloader'
end



def cipher(string, number)
	return "" if string.nil?
	word = String.new
	string.split("").each do |char| 	
	 	char.match(/[\s\W]+/) != nil ? "" : number.to_i.times { char = char.next }
 		word += char[-1]
	end
	# puts word
	return word
end	


get '/' do	
	# @number = params["number"]
	# @string = cipher(params["string"], @number.to_i)

	@number = 0
	@string = "Hello World!"

	erb :index, local => {
		:string => @string,
		:number => @number
	}
end


# puts "Give me a word..."
# string = gets.chomp
# puts "Now a number..."
# number = gets.chomp

# cipher = CaesarCipher.new(string, number)
