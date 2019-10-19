#write your code here

def translate(sentence)
    words = sentence.split(/,|\s/)
    # new_sentence = ""
    words.each_with_index do |word, i|
        words[i] = translate_word(word)
    end
    return words.join(" ")
end


def translate_word(word)
    # vowels = ["a", "e", "i", "o", "u"]
    # if(vowels.include?(word[0]))
    #     return word+"ay"
    # else
    #     return word[1..-1]+word[0]+"ay"
    # end
    vowel_i = consonant_check(word)
    if(vowel_i>0)
        return word[vowel_i..-1] + word[0..vowel_i-1] + "ay"
    else
        return word + "ay"
    end
end

def consonant_check(word)
    vowels = ["a", "e", "i", "o", "u"]
    index = 0
    word.chars.each_with_index do |char, i|
        break (i + 2) if(char=="q" and word[i+1]=="u")
        break i if(vowels.include?(char))
    end
    # return i
end
