words = ["gabby", "gail", "anna", "scott", "rob"]
@lives = 6
chances = 0
counter = 0




# def choose_letters(letter)
#   player_letter = ""
#
#   # letter = gets.chomp
#   player_letter << letter
# p letter.class
#   p player_letter
# end


def random_word(words)

  word_array = []
  letter_array = []
  ran_word = words.sample
  # p "this is ran_word #{ran_word}"
  new_word = ran_word.split(//)
  # p new_word
  until @lives == 0
    letter = ('a'..'z').to_a.sample
    # p "this is letter #{letter}"
    # p "this is ran_word #{ran_word}"
  if new_word.include?(letter) == true
    letter_array << letter
    p "this is letter #{letter}"
    subt = new_word - letter_array
    p "this is new_word #{new_word}"
    p "this is subt #{subt}"
    p "this is letter_array #{letter_array}"
    if subt.length == 0
      "You Won"
    else
      "you lost"
    end

    # deleted = letter.delete(letter)

    # p "this is letter_array #{letter_array}"


  else puts"Does not contain letter"
    @lives = @lives -1
  end
end
end
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
  p random_word(words)
