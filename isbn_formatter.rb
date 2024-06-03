require './ISBN13.rb'

test_isbn = ISBN13.new('978014300723')
puts "#{test_isbn.retrieve_complete_isbn()}"