

def player_one_input_word()
	p "Please input a word"
	word_input = gets.chomp
	return word_input
	split_word = word.split(//)
	# player_two_input_letter()
end

def player_two_input_letter()
	p "Please input letter: "
	letter = gets.chomp
end

WORD = player_one_input_word()

def game()
  letter_array = []
  trashcan = []
  chosen_word = player_one_input_word()
  p chosen_word
  # chosen_letter = player_two_input_letter()
  # p chosen_letter
  chances = 0
  loop do
  until chances == 7

      p "Please input letter: "
      letter = gets.chomp
      p letter
      if chosen_word.include?(letter) == true
        letter_array << letter
        p letter_array
        p letter_array.length
        if chosen_word.length == letter_array
          "You won"
        else
          "Keep guessing"
        end

      else chosen_word.include?(letter) == false
        trashcan << letter
        p "this is trashcan #{trashcan}"
        p trashcan.length
      end
        # if trashcan.length == chosen_word.length
        #   "You lose"
        # else
        #   "Keep guessing"
        # end
        # if letter_array.length == chosen_word.length
        #   "You win"
        # else trashcan.length == chosen_word.length
        #   "You lose"
        # end
      # end
      chances +=1
    # break if chances == 7
    end
  end
end




game()




















# words = ["gabby", "gail", "anna", "scott", "rob"]
# words = []






# def choose_letters(letter)
#   player_letter = ""
#
#   # letter = gets.chomp
#   player_letter << letter
# p letter.class
#   p player_letter
# end
# def get_letter(letter)
#   # # letter = ('a'..'z').to_a.sample
#   # letter = gets.chomp
#  letters = ""
#  letters << letter
#  letters
# end
#
# def random_word(words)
#   word_str = ""
#   word_array = []
#   letter_array = []
#   # ran_word = words.sample
#   # p "this is ran_word #{ran_word}"
#   new_word = words.split(//)
#   # p "this is new word in random_word #{new_word}"
#   # word_str << words
#   p new_word
# end
#
# def game(words,letter)
#   # counter = 6
#   trash_can = []
#   letter_array = []
#   ran_word = random_word(words)
#   ran_letter = get_letter(letter)
#   # p "this is ran_word #{ran_word}"
#   # p "this is ran_letter #{ran_letter}"
#   letter_array << ran_letter
# p letter_array.class
# p ran_word.class
# ran_word.each do |w|
#     final = ran_word - letter_array
#     if final.length == 6
#       "game over"
#     p final


  # end
# end







#     letter_array << letter
#     p "this is letter #{letter}"
#     subt = new_word - letter_array
#     p "this is new_word #{new_word}"
#     p "this is subt #{subt}"
#     p "this is letter_array #{letter_array}"
#       if subt.length == 0
#       "You Won"
#       else
#       "you lost"
#       end
#
#     # deleted = letter.delete(letter)
#
#     # p "this is letter_array #{letter_array}"
#
#
#   else puts"Does not contain letter"








# # counter = 0
# def compare_letter_to_word(words)
#   new_array = []
#   new_string = ""
#   letters = choose_letters(letter)
#   p letters
#   ran_word = words.sample
#   if ran_word.include?(letters) == true
#     new_array << letters
#     p "this is new_string #{new_string}"
#   else letters
#
#   end
#   end

  # p choose_letters(letter)
# get_letter(letters)
# game(words, letter)
# get_letter(letter)
# random_word(words)
# game(words,letter)
