def translate(string)
    words = string.split.map do |word|
        first_vowel_index = word.index(word.match(/a|e|i|o|u/).to_s)
        if first_vowel_index == 0
            word = word + "ay"
        elsif word[first_vowel_index] == 'u' && word[first_vowel_index-1] == 'q'
            word = word[first_vowel_index+1..-1] + word[0..first_vowel_index] + "ay"
        else
            word = word[first_vowel_index..-1] + word[0..first_vowel_index-1] + "ay"
        end
    end
    words.join(' ')
end
