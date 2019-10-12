#write your code here

def echo(something)
	return something
end

def shout(something)
	something.upcase
end

def repeat(something, n=2)
	return (something+" ")*(n-1) + something
end

def start_of_word(word, n)
	return word[0..n-1]
end

def first_word(sentence)
	sentence.split(" ")[0]
end

def titleize(sentence)
	arr = sentence.split(" ")
	if(small_word(arr[0]))
		arr[0] = arr[0].capitalize
	end
	newSen = ""
	arr.each do |word|
		if(small_word(word))
			newSen = newSen + word + " "
			next
		end
		newSen = newSen + word.capitalize + " "
	end
	return newSen[0..-2]
end

def small_word(word) 
	smallWordArr = ["the","an","a","and","at","over"]
	return smallWordArr.include? word
end
