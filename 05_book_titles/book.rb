class Book
# write your code here
    def initialize()
        @title = ""
    end

    def title()
        return capitalize(@title)
    end

    def title=(title)
        @title = title
    end

    def capitalize(sentence)
        adverbs = ["a","an","and","in","the","of","for","to","at"]
        words = sentence.split(/,|\s/)
        words.each_with_index do |word, i|
            if(i==0 or !adverbs.include?(word))
                words[i] = words[i].capitalize
            end
        end
        return words.join(" ")
    end            
end
