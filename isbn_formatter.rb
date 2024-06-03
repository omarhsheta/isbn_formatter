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
    puts result
end
multiplier(test)