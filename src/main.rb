require './controllers/ISBN13.rb'
require './controllers/Validator.rb'

puts "Please enter the first 12 numbers of the ISBN13 code"
input = gets.chomp
validate = Validator.new(input)
if validate.is_good_input()
    test_isbn = ISBN13.new()
    puts "The complete ISBN13 code is: #{test_isbn.retrieve_complete_isbn(input)}"
end