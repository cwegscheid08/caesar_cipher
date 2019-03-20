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
	@number = params["number"]
	@string = params["message"]
	@message = cipher(@string, @number.to_i)

	# @message = cipher(params["message"], params["number"].to_i)

	# puts "MESSAGE:#{@message}"
	# puts "STRING:#{@string}"
	# puts "NUMBER:#{@number}"

	erb :index, :local => {
		:message => @message,
		:string => @string,
		:number => @number
	}

	# "I'm here"
end


# puts "Give me a word..."
# string = gets.chomp
# puts "Now a number..."
# number = gets.chomp

# cipher = CaesarCipher.new(string, number)
