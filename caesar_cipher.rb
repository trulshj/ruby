
def caesar_cipher(str, shift)
    letters = Array('a'..'z')
    shifted_string = ""

    str.each_char { |c|
        # find the index of a character in the alphabet and shift it over, mod the size of the alphabet
        idx = letters.find_index(c)
        if idx == nil
            shifted_string += c
        else
            idx += shift
            shifted_string += letters[idx % letters.length]
        end
    }
    
    return shifted_string
end

puts caesar_cipher("puluka", 13)
puts caesar_cipher("What a string!", 5)