class Book

    attr_reader :title

    def title=(string)
        skip_words = ['the', 'a', 'an', 'and', 'in', 'of']
        @title = string.split.each_with_index do |word, index|
            if !skip_words.include?(word) || index == 0
                word = word.capitalize!
            end
        end
        @title = @title.join(' ')
    end

end