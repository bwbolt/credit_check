card_number = '5541808923795240'

# Your Luhn Algorithm Here

algo = card_number.split('').map { |e| e.to_i }.each_with_index.map do |i, index|
  if index.even?
    a = i * 2
    b = a.to_s.split('')
    b[0].to_i + b[1].to_i
  else
    i
  end
end

if algo.sum % 10 == 0
  p "The number #{card_number} is valid!"
else
  p "The number #{card_number} is invalid!"
end

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
