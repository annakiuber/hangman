require 'minitest/autorun'
require_relative 'final_hangman.rb'

class Hangman_test < Minitest::Test
	def test_air_for_a
  		word = "air"
  		letter = 'a'
   		assert_equal(true, game(word,letter))
 	end

    def test_sucker_for_k
    	word = "sucker"
        letter = "k"
        assert_equal(true, game(word,letter))
    end

    def test_apples_for_a
    	word = "apples"
        letter = 'a'
        assert_equal(true, game(word,letter))
    end

    def test_sucker_for_o
        word = "sucker"
        letter = "o"
        assert_equal(false, game(word,letter))
    end

    def test_sucker_for_s
    	word = "sucker"
        letter = "s"
        assert_equal(true, game(word,letter))
    end

    def test_smiles_for_s
    	word = "smiles"
        letter = "s"
        assert_equal(true, game(word,letter))
    end

    def test_sucker_for_m
    	word = "smiles"
        letter = "m"
        assert_equal(true, game(word,letter))
    end

    def test_sucker_for_multiple_letters_in_single_str
    	word = "smiles"
        letter = "es"
        assert_equal(false, game(word,letter))
    end

		def test_a_in_air_true
  		word = "air"
  		letter = "a"
   		assert_equal(true, game(word,letter))
 		end

    	def test_u_in_sucker_true
    	word = "sucker"
        letter = "u"
        assert_equal(true, game(word,letter))
    	end

    def test_r_in_sucker_true
        word = "sucker"
        letter = "r"
        assert_equal(true, game(word,letter))
    end

    def test_b_in_sucker_false
        word = "sucker"
        letter = "b"
        assert_equal(false, game(word,letter))
    end

    def test_1_in_sucker_false
        word = "sucker"
        letter = "1"
        assert_equal(false, game(word,letter))
    end

    def test_symbol_in_sucker_false
    	word = "sucker"
        letter = "&"
        assert_equal(false, game(word,letter))
    end

    def test_hangman_returns_7_dashes
        word = "hangman"
        hidden_word_array = ["_", "_", "_", "_", "_", "_", "_"]
        assert_equal(hidden_word_array, lines(word))
    end

end
