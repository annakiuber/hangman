def lines(word)
    hidden_word_array = []
    word_length = word.length
    word_length.times do
      hidden_word_array << "_"
    end
    hidden_word_array
end

def update_hidden_word_arr(hidden_word_arr, word, letter)
    counter = 0
    incorrect_guesses = []
    word.split("").each do |word_letter|
        if word_letter == letter
            hidden_word_arr[counter] = letter
        end
        counter += 1
    end
    hidden_word_arr
end

def update_incorrect_word_arr(incorrect_guesses, word, letter)
  if word.split("").include?(letter) == false
    incorrect_guesses << letter
  end
  incorrect_guesses
end
