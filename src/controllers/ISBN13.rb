
class ISBN13

    def multiplier(input)
        if (input.length == 12)
            result = 0
            input.each_char.with_index do |char, index|
                if index % 2 == 0
                    result += char.to_i * 1
                else
                    result += char.to_i * 3
                end
            end
            return result
        else
            puts "ERROR: The string length should be exactly 12"
            return -1
        end
    end
    
    def get_final_number(input)
        remainder = 10 - (input % 10)
        if remainder == 10
            return 0
        end
        return remainder
    end
    
    def retrieve_complete_isbn(incomplete_isbn)
        if (incomplete_isbn.length == 12)
            multiplied_sum = multiplier(incomplete_isbn)
            remainder_diff = get_final_number(multiplied_sum)
            return "#{incomplete_isbn}#{remainder_diff}"
        else
            puts "ERROR: The input must be 12 characters long."
            return nil
        end
    end
end