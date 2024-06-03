class Validator
    def initialize(input)
        @incomplete_isbn = input
    end

    def verify_length()
        if @incomplete_isbn.length == 12
            return true
        end
        puts ('-' * 100) + "\nSorry, your input must be 12 chars long.\n" + ('-' * 100)
        return false
    end

    def is_numeric()
        if @incomplete_isbn.to_i.to_s == @incomplete_isbn
            return true
        end
        puts ('-' * 100) + "\nSorry, the input you have entered is not numeric.\n" + ('-' * 100)
        return false
    end

    def is_good_input()
        if verify_length() && is_numeric()
            return true
        end
        puts "Please check your input. Must be 12 base-10 numbers.\n" + ('-' * 100)
        return false
    end
end