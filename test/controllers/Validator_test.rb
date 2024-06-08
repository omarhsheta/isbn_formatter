require_relative './../../src/controllers/Validator.rb'
require 'test/unit'
require 'test/unit/ui/console/testrunner'
class Validator_Test < Test::Unit::TestCase
    def test_input_too_short
        validator = Validator.new('1234567890')
        assert_equal(false, validator.is_good_input())
    end

    def test_input_too_long
        validator = Validator.new('12345678901234567890')
        assert_equal(false, validator.is_good_input())
    end

    def test_input_numeric_but_not_str
        validator = Validator.new(1234567890)
        assert_equal(false, validator.is_good_input())
    end

    def test_input_is_nil
        validator = Validator.new(nil)
        assert_equal(false, validator.is_good_input())
    end

    def test_input_is_valid
        validator = Validator.new('123456789012')
        assert_equal(true, validator.is_good_input())
    end
end
Test::Unit::UI::Console::TestRunner.run(Validator_Test)