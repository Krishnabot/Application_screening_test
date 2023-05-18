def fizz_buzz
    result = []
    
    (1..100).each do |number|
      if number % 3 == 0 && number % 5 == 0
        result << "FizzBuzz"
      elsif number % 3 == 0
        result << "Fizz"
      elsif number % 5 == 0
        result << "Buzz"
      else
        result << number.to_s
      end
    end
    
    result
  end