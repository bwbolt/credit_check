class CreditCard
  attr_accessor :card_number, :limit

  def initialize(card_number, limit = 0)
    @card_number = card_number
    @limit = limit
  end

  def is_valid?
    algo = @card_number.split('').map { |e| e.to_i }.each_with_index.map do |i, index|
      if index.even?
        a = i * 2
        b = a.to_s.split('')
        b[0].to_i + b[1].to_i
      else
        i
      end
    end

    algo.sum % 10 == 0
  end

  def last_four
    @card_number[-4..-1]
  end

  def check_sum
    algo = @card_number.split('').map { |e| e.to_i }.each_with_index.map do |i, index|
      if index.even?
        a = i * 2
        b = a.to_s.split('')
        b[0].to_i + b[1].to_i
      else
        i
      end
    end

    algo.sum
  end
end
