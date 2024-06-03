test = '978014300723'

def multiplier(input)
    result = 0
    input.each_char.with_index do |char, index|
        if index % 2 == 0
            result += char.to_i * 1
        else
            result += char.to_i * 3
        end
    end
    return result
end

def mod_of_ten(input)
    remainder = 10 - (input % 10)
    if remainder == 10
        return 0
    end
    return remainder
end

def get_final_isbn_number(incomplete_isbn, remainder)
    return "#{incomplete_isbn}#{remainder}"
end

sum = multiplier(test)
remainder = mod_of_ten(sum)
puts get_final_isbn_number(test, remainder)