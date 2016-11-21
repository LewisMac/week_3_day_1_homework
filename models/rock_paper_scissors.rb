class RockPaperScissors

  def initialize(options)
    rps_array = ["rock", "paper", "scissors", "lizard", "spock"]
    @rand_choice = rps_array[rand(5)]
    @player2 = options[:player_2_choice] || @rand_choice
  end

  def gameplay_rock()
    if @player2 == "rock"
      result = "Rock on Rock: draw"
    elsif @player2 == "paper"
      result = "Paper covers Rock: you lose"
    elsif @player2 == "spock"
      result = "Spock vaporizes Rock: you lose"
    elsif @player2 == "scissors"
      result = "Rock crushes Scissors: you win"
    elsif @player2 == "lizard"
      result = "Rock crushes Lizard: you win"
    end
    return result
  end

  def gameplay_paper()
    if @player2 == "paper"
      result = "Paper on Paper: draw"
    elsif @player2 == "scissors"
      result = "Scissors cuts Paper: you lose"
    elsif @player2 == "lizard"
      result = "Lizard eats Paper: you lose"
    elsif @player2 == "rock"
      result = "Paper covers Rock: you win"
    elsif @player2 == "spock"
      result = "Paper disproves Spock: you win"
    end
    return result
  end

  def gameplay_scissors()
    if @player2 == "scissors"
      result = "Scissors on Scissors: draw"
    elsif @player2 == "rock"
      result = "Rock crushes Scissors: you lose"
    elsif @player2 == "spock"
      result = "Spock smashes Scissors: you lose"
    elsif @player2 == "paper"
      result = "Scissors cuts paper: you win"
    elsif @player2 == "lizard"
      result = "Scissors decapitates Lizard: you win"
    end
    return result
  end

  def gameplay_lizard()
    if @player2 == "lizard"
      result = "Lizard on Lizard: draw"
    elsif @player2 == "rock"
      result = "Rock crushes Lizard: you lose"
    elsif @player2 == "scissors"
      result = "Scissors decapitates Lizard: you lose"
    elsif @player2 == "paper"
      result = "Lizard eats Paper: you win"
    elsif @player2 == "spock"
      result = "Lizard poisons Spock: you win"
    end
    return result
  end

  def gameplay_spock()
    if @player2 == "spock"
      result = "Spock on Spock: draw"
    elsif @player2 == "paper"
      result = "Paper disproves Spock: you lose"
    elsif @player2 == "lizard"
      result = "Lizard poisons Spock: you lose"
    elsif @player2 == "scissors"
      result = "Spock smashes Scissors: you win"
    elsif @player2 == "rock"
      result = "Spock vaporizes Rock: you win"
    end
    return result
  end



end