require './lib/credit_card'

p 'Welcome to the Credit Card Validator 3000'

while true

  p 'Please enter the card number to be validated'
  print '>'
  card = CreditCard.new(gets.chomp)
  if card.is_valid?
    p "The number #{card.card_number} is valid!"
  else
    p "The number #{card.card_number} is invalid!"
  end
  p 'Would you like to check the sum of the cards digits?'
  print '>'
  answer = gets.chomp
  p card.check_sum if answer.upcase == 'YES'

end
