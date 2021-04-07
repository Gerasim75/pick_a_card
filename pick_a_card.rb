# The Drunkard Card Game

STANDARD_OF_CARDS = %w[♦6 ♥6 ♣6 ♠6 ♦7 ♥7 ♣7 ♠7 ♦8 ♥8 ♣8 ♠8 ♦9 ♥9 ♣9 ♠9 ♦10 ♥10 
                    ♣10 ♠10 ♦V ♥V ♣V ♠V ♦Q ♥Q ♣Q ♠Q ♦K ♥K ♣K ♠K ♦T ♥T ♣T ♠T]
   
# Shuffle the deck and deal the cards

buffer_cards = STANDARD_OF_CARDS
komputer_cards = buffer_cards.sample(18)
buffer_cards = STANDARD_OF_CARDS - komputer_cards
user_cards = buffer_cards.sample(18)

# Game

while !user_cards.empty? && !komputer_cards.empty?
  if STANDARD_OF_CARDS.rindex(user_cards[0]) > STANDARD_OF_CARDS.rindex(komputer_cards[0])
    user_cards.push(komputer_cards.delete_at(0))
  elsif STANDARD_OF_CARDS.rindex(user_cards[0]) < STANDARD_OF_CARDS.rindex(komputer_cards[0])
    komputer_cards.push(user_cards.delete_at(0))
  end
end
if user_cards.size.zero?
  puts "You're the loser!"
else 
  puts "You are the winner!"
end

# Displaying the gameplay

puts "Computer cards: #{komputer_cards}"
puts "User cards: #{user_cards}"
