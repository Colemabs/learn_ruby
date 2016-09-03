#write your code here
def translate(english)
	alphabet = ["a","b", "c", "d","e", "f", "g", "h","i", "j", "k", "l", "m", "n","o", "p", "q", "r", "s", "t","u", "v", "w", "x", "y", "z"] 
	vowels = ["a", "e", "i", "o", "u"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	

			
	word_array = english.split(" ") #split input into a workable array
	final_array = [] 				#array to push finished words into
	
	word_array.each {|word| #iterate through every word in the array

		if vowels.include?(word[0]) #if the word starts with a vowel
				word = word << "ay"
				final_array = final_array << word
		end
		
		if word[0..2].include?("qu") #if the word has "qu" in the first three letters
			if word[1..2] == "qu"	 #if qu comes after a consonant
			word = word[3, word.length] << word[0] << word[1] << word[2] << "ay"
			final_array = final_array << word
			else					 #otherwise the word starts with "qu"
			word = word[2, word.length] << word[0] << word[1] << "ay"
				final_array = final_array << word
		end
			
		#if here, then the word starts with a consonant	
		elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2]) #grab the first three consonants
			word = word[3, word.length] << word[0] << word[1] << word[2] << "ay"
			final_array = final_array << word
		elsif consonants.include?(word[0]) && consonants.include?(word[1]) #grab the first two consonants
			word = word[2, word.length] << word[0] << word[1] << "ay"
			final_array = final_array << word
		elsif consonants.include?(word[0])								   #grab the first consonant
				word = word[1, word.length] << word[0] << "ay"
				final_array = final_array << word		
		end
	}
	return final_array.join(" ") #join the array of translated words into a string
	
end