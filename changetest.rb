require "minitest/autorun"
require_relative "changer.rb"

class TestArr < Minitest::Test

	def test_posit_match
		crackers = 1
		crakkers = 3
		assert_equal(4, (crackers + crakkers))
	end	

	def test_for_apenny
		assert_equal({quarter: 0, dime: 0, nikkel: 0, penny: 1}, coiny(1))
	end
	
	def test_a_nickel
		assert_equal({quarter: 0, dime: 0, nikkel: 1, penny: 0}, coiny(5))
	end		

	def test_a_dime
		assert_equal({quarter: 0, dime: 1, nikkel: 0, penny: 0}, coiny(10))
	end	

	def test_a_qtr
		assert_equal({quarter: 1, dime: 0, nikkel: 0, penny: 0}, coiny(25))
	end	

	def test_90
		assert_equal({quarter: 3, dime: 1, nikkel: 1, penny: 0}, coiny(90))
	end

	def test_453
		assert_equal({quarter: 18, dime: 0, nikkel: 0, penny: 3}, coiny(453))
	end

	
		
end	



