require "minitest/autorun"
require_relative "changer.rb"

class TestArr < Minitest::Test

	def test_positn_match
		ptaters = 1
		taters = 3
		assert_equal(4, (ptaters + taters))
	end	

	def test_for_apenny
		assert_equal({quarter: 0, dime: 0, nikkel: 0, penny: 1}, changeup(1))
	end
	
	def test_a_nickel
		assert_equal({quarter: 0, dime: 0, nikkel: 1, penny: 0}, changeup(5))
	end		

	def test_a_dime
		assert_equal({quarter: 0, dime: 1, nikkel: 0, penny: 0}, changeup(10))
	end	

	def test_a_qtr
		assert_equal({quarter: 1, dime: 0, nikkel: 0, penny: 0}, changeup(25))
	end	

	def test_3qtr
		assert_equal({quarter: 3, dime: 0, nikkel: 0, penny: 0}, changeup(75))
	end
		
	def test_93
		assert_equal({quarter: 3, dime: 1, nikkel: 1, penny: 3}, changeup(93))
	end

	def test_503
		assert_equal({quarter: 20, dime: 0, nikkel: 0, penny: 3}, changeup(503))
	end

	
		
end	



