require 'sinatra'
require_relative 'final_hangman.rb'

enable :sessions

get '/' do
  session[:chosen_word] = ""
  session[:incorrect_guesses] = []
  erb :choose_word
end

post "/choose_word" do
  session[:chosen_word] = params[:chosen_word]
  session[:hidden_word_array] = params[:hidden_word_array]
  session[:hidden_word_array] = lines(session[:chosen_word])
  # session[:incorrect_guesses] = params[:incorrect_guesses]
  redirect '/choose_letter'
end

get '/choose_letter' do
	puts "you are in get '/choose_letter' do and params are #{params}"
  session[:letter] = ""
  erb :choose_letter, locals:{chosen_word: session[:chosen_word], hidden_word_array: session[:hidden_word_array],incorrect_guesses: session[:incorrect_guesses]}
end

post '/choose_letter' do

  session[:letter] = params[:letter]
  session[:hidden_word_array] = update_hidden_word_arr(session[:hidden_word_array], session[:chosen_word], session[:letter])
  session[:incorrect_guesses] = update_incorrect_word_arr(session[:incorrect_guesses], session[:chosen_word], session[:letter])
  if session[:hidden_word_array].include?("_") && session[:incorrect_guesses].length < 6
  	redirect '/choose_letter'
  elsif session[:incorrect_guesses].length >= 6
    redirect '/you_lost'
  else
   	redirect '/you_won'
  end
end

get '/you_won' do
	erb :you_won, locals:{chosen_word: session[:chosen_word], hidden_word_array: session[:hidden_word_array], incorrect_guesses: session[:incorrect_guesses]}

end

get '/you_lost' do
	puts "in get '/results' do params are #{params}"
   puts "in get '/results' do session are #{session.to_a}"
   erb :you_lost, locals:{chosen_word: session[:chosen_word], hidden_word_array: session[:hidden_word_array], incorrect_guesses: session[:incorrect_guesses]}
end
