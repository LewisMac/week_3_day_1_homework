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

get '/RPS/val'do
@rps_result = "VAL BEATS ALL"
erb(:result)
end

get '/RPS/random'do
@rps_result = "Stop Typing in Random Words"
erb(:result)
end

get '/RPS/egg'do
@rps_result = "Yay, you've found the easter egg, now go play the game properly"
erb(:result)
end

get '/RPS/:choice1' do
  if ["rock", "paper", "scissors", "lizard", "spock"].include? params[:choice1]

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
  else
    result = "Stop Typing In Random Things"
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

