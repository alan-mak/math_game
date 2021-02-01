require './players'
require './question'

puts "Welcome to the math game"
puts "Player 1 name:"
player1 = Person.new(gets.chomp)
puts "Player 2 name:"
player2 = Person.new(gets.chomp)
counter = 0

while player1.alive? and player2.alive? do
  player = (counter % 2 == 0) ? player1 : player2
  puts "-----------#{player.name}'s' turn------------"
  question = Question.new
  answer = question.answer_question
  if !answer
    player.wrong
    if player.life == 0
      winner = player.name == player1.name ? "#{player2.name}" : "#{player1.name}"
      puts "\n************#{winner} wins the game**************"
    end
  end
  puts "#{player1.life}/3 vs #{player2.life}/3"
  counter += 1
end
puts "GAME OVER"
puts "GOOD BYE"