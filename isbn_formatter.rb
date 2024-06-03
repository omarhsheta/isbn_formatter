require './ISBN13.rb'
require './Validator.rb'

input = gets.chomp
validate = Validator.new(input)
if validate.is_good_input()
    test_isbn = ISBN13.new(input)
    puts "#{test_isbn.retrieve_complete_isbn()}"
end