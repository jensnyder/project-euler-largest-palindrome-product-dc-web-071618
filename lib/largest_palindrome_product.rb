# Implement your procedural solution here!
def largest_palindrome_product
  largest = 0
  (100..999).each do |number1|
    (100..999).each do |number2|
      product = number1 * number2
      if is_palindrome?(product) && product > largest
        largest = product
      end
    end
  end
  largest
end

def is_palindrome?(number)
  number.to_s == number.to_s.reverse
end
