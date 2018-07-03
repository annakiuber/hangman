require 'minitest/autorun'
require_relative 'hangman.rb'

class Isbn_test < Minitest::Test
	def test_true_is_true
		assert_equal(true,true)
	end

  def test_letter
    letter = "a"
    assert_equal(true, compare_letter_to_word(letter))
  end

end
