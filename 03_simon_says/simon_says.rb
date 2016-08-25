#write your code here
def echo(input)
if input == "hello"
	"hello"
else
	"bye"
end
	end

def shout(input)
	input.upcase
end

def repeat(input, reps = 2)
	text = "#{input} " * reps
	text.chomp(" ")
end

def start_of_word(word, span)
	word[0..span - 1]
end

def first_word(word)
	word.split.first
end

def titleize(string)
	original_array = string.split(" ")
	final_array = Array.new

	#I should learn how to iterate over an array of "little words" in a conditional
	#so that I can apply this method to any string and add or minus "little words"
	if original_array[0] == "the"
		word = original_array[0]
		final_array.push(start_of_word(word,1).upcase + word[1, word.length])
		original_array.shift
		end
		

	if original_array.each do |word|

		#if i learn how to do what I said in the last comment, these next three
		#if / elsif could just be one if
		if word == "and"
			final_array.push(word)
		elsif word == "over"
			final_array.push(word)
		elsif word == "the"
			final_array.push(word)
		else
			final_array.push(start_of_word(word,1).upcase + word[1, word.length])
		end
	end
end

return final_array.join(" ")
	
end