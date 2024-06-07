require_relative './../../src/controllers/ISBN13.rb'
require 'test/unit'
require 'test/unit/ui/console/testrunner'

class ISBN13_Test < Test::Unit::TestCase
    def test_normal_input
        #978828154455 should return 9788281544550
        @isbn = ISBN13.new
        assert_equal('9788281544550', @isbn.retrieve_complete_isbn('978828154455'))
    end
    # def test_short_input
    #     #978828154455 should return 9788281544550
    #     @isbn = ISBN13.new
    #     assert_equal('9788281544550', @isbn.retrieve_complete_isbn())
    # end
end
Test::Unit::UI::Console::TestRunner.run(ISBN13_Test)