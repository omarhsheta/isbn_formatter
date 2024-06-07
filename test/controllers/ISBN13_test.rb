require_relative './../../src/controllers/ISBN13.rb'
require 'test/unit'
require 'test/unit/ui/console/testrunner'

class ISBN13_Test < Test::Unit::TestCase
    def setup
        @isbn = ISBN13.new
    end

    def teardown
    end

    def test_normal_input_returns_complete_isbn13
        assert_equal('9788281544550', @isbn.retrieve_complete_isbn('978828154455'))
    end

    def test_input_too_long_returns_nil
        assert_equal(nil, @isbn.retrieve_complete_isbn('9788281544550'))
    end

    def test_input_too_short_returns_nil
        assert_equal(nil, @isbn.retrieve_complete_isbn('97882815445'))
    end

    def test_short_input_for_multiplier
        assert_equal(-1, @isbn.multiplier('97882815445'))
    end

    def test_long_input_for_multiplier
        assert_equal(-1, @isbn.multiplier('9788281544550'))
    end

    def test_12_char_long_input_for_multiplier
        assert_equal(140, @isbn.multiplier('978828154455'))
    end

    def test_getting_final_number_any_number_divisble_by_ten_returns_zero
        assert_equal(0, @isbn.get_final_number(10))
        assert_equal(0, @isbn.get_final_number(100))
        assert_equal(0, @isbn.get_final_number(1000))
    end

    def test_getting_final_number_with_numbers_not_divisible_by_ten
        assert_equal(9, @isbn.get_final_number(11))
        assert_equal(8, @isbn.get_final_number(12))
        assert_equal(7, @isbn.get_final_number(13))
        assert_equal(6, @isbn.get_final_number(14))
        assert_equal(5, @isbn.get_final_number(15))
        assert_equal(4, @isbn.get_final_number(16))
        assert_equal(3, @isbn.get_final_number(17))
        assert_equal(2, @isbn.get_final_number(18))
        assert_equal(1, @isbn.get_final_number(19))
    end
end
Test::Unit::UI::Console::TestRunner.run(ISBN13_Test)