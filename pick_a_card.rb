# The Drunkard Card Game

STANDARD_OF_CARDS = %w[♦6 ♥6 ♣6 ♠6 ♦7 ♥7 ♣7 ♠7 ♦8 ♥8 ♣8 ♠8 ♦9 ♥9 ♣9 ♠9 ♦10 ♥10 
                    ♣10 ♠10 ♦V ♥V ♣V ♠V ♦Q ♥Q ♣Q ♠Q ♦K ♥K ♣K ♠K ♦T ♥T ♣T ♠T]

buffer_cards = STANDARD_OF_CARDS
computer_cards = buffer_cards.sample(18)
buffer_cards = STANDARD_OF_CARDS - computer_cards
user_cards = buffer_cards.sample(18)

puts "This is \"Drunkard\" Card Game!"

while !user_cards.empty? && !computer_cards.empty?
  puts "Press Enter to make a move"

  while STDIN.gets != "\n"
  end
  system 'clear' 
  puts "You have card (#{user_cards.size})       - #{user_cards}"
  puts ""
  puts "Computer have card (#{computer_cards.size})  - #{computer_cards}"
  puts ""
  puts "User - #{user_cards[0]} vs #{computer_cards[0]} - Computer" 
  puts ""
  
  if STANDARD_OF_CARDS.rindex(user_cards[0]) > STANDARD_OF_CARDS.rindex(computer_cards[0])
    user_cards.push(computer_cards.delete_at(0))
    user_cards.push(user_cards.delete_at(0))
    puts "You have!"
    puts ""
  elsif STANDARD_OF_CARDS.rindex(user_cards[0]) < STANDARD_OF_CARDS.rindex(computer_cards[0])
    computer_cards.push(user_cards.delete_at(0))
    computer_cards.push(computer_cards.delete_at(0))
    puts "Computer have!"
    puts ""
  end
end

if user_cards.size.zero?
  puts "You're the loser!"
else 
  puts "You are the winner!"
end
