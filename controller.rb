require('sinatra')
require('sinatra/contrib/all')
require('json')
require_relative('models/rock_paper_scissors')
require('pry-byebug')

get '/RPS' do
  erb(:homepage)
end

get '/RPS/info' do
  erb(:information)
end

get '/RPS/:choice1' do
  input1 = params[:choice1]
  options = {}
  user_choice = RockPaperScissors.new(options)
  if input1 == "rock"
    result = user_choice.gameplay_rock()
  elsif input1 == "paper"
    result = user_choice.gameplay_paper()
  elsif input1 == "scissors"
    result = user_choice.gameplay_scissors()
  elsif input1 == "lizard"
    result = user_choice.gameplay_lizard()
  elsif input1 == "spock"
    result = user_choice.gameplay_spock()
  end
  @rps_result = result.to_s
  erb(:result)
end

get '/RPS/:choice1/:choice2' do
  input1 = params[:choice1]
  input2 = params[:choice2]
# binding.pry
  options = {player_2_choice: input2}
  user_choice = RockPaperScissors.new(options)
  if input1 == "rock"
    result = user_choice.gameplay_rock()
  elsif input1 == "paper"
    result = user_choice.gameplay_paper()
  elsif input1 == "scissors"
    result = user_choice.gameplay_scissors()
  elsif input1 == "lizard"
    result = user_choice.gameplay_lizard()
  elsif input1 == "spock"
    result = user_choice.gameplay_spock()
  end
  @rps_result = result.to_s
  erb(:result)
end

get '/RPS/egg'do
return "Yay, you've found the easter egg, now go play the game properly"
end