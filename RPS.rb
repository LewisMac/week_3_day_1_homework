rps_array = ["paper", "scissors", "rock"]

puts "Rock, Paper or Scissors"
user_choice = gets.chomp.downcase

random_choice = rps_array[rand(3)]


#if random_choice == user_choice
  #puts "draw"
  while random_choice == user_choice do
    puts "Draw"
    puts "Rock, Paper or Scissors"
    user_choice = gets.chomp.downcase
    random_choice = rps_array[rand(3)]
    break if
    random_choice == "rock"; "paper"; "scissors" and user_choice == "paper"; "scissors"; "rock"
    break if 
    random_choice != "rock"; "paper"; "scissors" and user_choice == "paper"; "scissors"; "rock"
  end
  if random_choice == "rock"; "paper"; "scissors" and user_choice == "paper"; "scissors"; "rock"
    puts "you win"
  else
    puts "you lose"
  end