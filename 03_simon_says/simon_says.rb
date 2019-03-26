def echo(string)
    string
end

def shout(string)
    string.upcase
end

def repeat(string, repeats = 2)
    ((string + ' ') * repeats).chomp(' ')
end

def start_of_word(string, number_of_letters)
    string[0..number_of_letters -1]
end

def first_word(string)
    string.split[0]
end

def titleize(string)
    words = string.capitalize.split
    words.each do |word|
        if word.length > 3 && word != "over"
            word = word.capitalize!
        end
    end
    words.join(' ')
end
