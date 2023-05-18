require_relative '../fizz_buzz'

RSpec.describe 'FizzBuzz' do
  describe '#fizz_buzz' do
    it 'returns Fizz for multiples of 3' do
      expect(fizz_buzz[2]).to eq('Fizz')
      expect(fizz_buzz[5]).to eq('Fizz')
    end
    
    it 'returns Buzz for multiples of 5' do
      expect(fizz_buzz[4]).to eq('Buzz')
      expect(fizz_buzz[9]).to eq('Buzz')
    end
    
    it 'returns FizzBuzz for multiples of both 3 and 5' do
      expect(fizz_buzz[14]).to eq('FizzBuzz')
      expect(fizz_buzz[29]).to eq('FizzBuzz')
    end
    
    it 'returns the number as a string for non-multiples' do
      expect(fizz_buzz[0]).to eq('1')
      expect(fizz_buzz[6]).to eq('7')
      expect(fizz_buzz[10]).to eq('11')
    end
  
  end
end
