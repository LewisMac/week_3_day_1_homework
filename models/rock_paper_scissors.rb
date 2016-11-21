class RockPaperScissors

  def initialize(options)
    rps_array = ["rock", "paper", "scissors"]
    @rand_choice = rps_array[rand(3)]
    @player2 = options[:player2_choice] || @rand_choice
  end

  def gameplay_rock()
    if @player2 == "rock"
      result = "Rock on Rock: draw"
    elsif @player2 == "paper"
      result = "Paper beats Rock: you lose"
    elsif @player2 == "scissors"
      result = "Rock beats Scissors: you win"
    end
    return result
  end

  def gameplay_paper()
    if @player2 == "paper"
      result = "Paper on Paper: draw"
    elsif @player2 == "rock"
      result = "Paper beats Rock: you win"
    elsif @player2 == "scissors"
      result = "Scissors beats Paper: you lose"
    end
    return result
  end

  def gameplay_scissors()
    if @player2 == "scissors"
      result = "Scissors on Scissors: draw"
    elsif @player2 == "paper"
      result = "Scissors beats Paper: you win"
    elsif @player2 == "scissors"
      result = "Rock beats Scissors: you lose"
    end
    return result
  end



end