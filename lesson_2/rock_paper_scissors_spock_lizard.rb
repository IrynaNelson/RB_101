$rock_options = ['rock','1','r']
$paper_options = ['paper','2','p']
$scissors_options = ['scissors','3','sc']
$spock_options = ['spock','4','sp']
$lizard_options = ['lizard','5','l']

VALID_CHOICES = [$rock_options, $paper_options, $scissors_options, $spock_options, $lizard_options]

$choice = nil

def valid_option(option)
  valid = false
  VALID_CHOICES.each do |x|
    if (x.include?(option))
      valid = true
      $choice = x[0]
      break
    
    end
  end
  
  return valid

end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def display_result(player, computer)
  if ($rock_options.include?(player) && $scissors_options.include?(computer)) ||
     ($rock_options.include?(player) && $lizard_options.include?(computer)) ||
     ($paper_options.include?(player) && $rock_options.include?(computer)) ||
     ($paper_options.include?(player) && $spock_options.include?(computer)) ||
     ($scissors_options.include?(player) && $paper_options.include?(computer)) ||
     ($scissors_options.include?(player) && $lizard_options.include?(computer)) ||
     ($spock_options.include?(player) && $rock_options.include?(computer)) ||
     ($spock_options.include?(player) && $scissors_options.include?(computer)) ||
     ($lizard_options.include?(player) && $paper_options.include?(computer)) ||
     ($lizard_options.include?(player) && $spock_options.include?(computer))    
    prompt("You won!")
  elsif ($rock_options.include?(player) && $paper_options.include?(computer)) ||
        ($rock_options.include?(player) && $spock_options.include?(computer)) ||
        ($paper_options.include?(player) && $scissors_options.include?(computer)) ||
        ($paper_options.include?(player) && $lizard_options.include?(computer)) ||
        ($scissors_options.include?(player) && $rock_options.include?(computer)) ||
        ($scissors_options.include?(player) && $spock_options.include?(computer)) ||
        ($spock_options.include?(player) && $lizard_options.include?(computer)) ||
        ($spock_options.include?(player) && $paper_options.include?(computer)) ||
        ($lizard_options.include?(player) && $rock_options.include?(computer)) ||
        ($lizard_options.include?(player) && $scissors_options.include?(computer)) 
      prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
  end

  loop do 

    loop do 
      prompt("Choose one: rock (1 or r), paper (2 or p), scissors (3 or sc), spock (4 or sp), lizard (5 or l)")
      input = Kernel.gets().chomp()

    if valid_option(input)
      break
    else
      prompt("That's not a valid choice.")
    end
  end
  computer_choice = VALID_CHOICES.sample[0]

  prompt("You chose: #{$choice}; Computer chose: #{computer_choice};")

  winning_message = display_result($choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")