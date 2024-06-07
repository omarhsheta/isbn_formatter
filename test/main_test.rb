require 'test/unit/testsuite'
require_relative './controllers/ISBN13_test'

class ISBN_Formatter_Tests
    def self.suite
        suite = Test::Unit::TestSuite.new
        suite << ISBN13_Test.suite
        return suite
    end
end
Test::Unit::UI::Console::TestRunner.run(ISBN_Formatter_Tests)