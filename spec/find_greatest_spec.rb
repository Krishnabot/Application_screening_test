require_relative '../find_greatest'

RSpec.describe 'find_greatest' do
  it 'returns the greatest number among three positive numbers' do
    expect(find_greatest(10, 5, 8)).to eq(10)
  end

  it 'returns the greatest number among three negative numbers' do
    expect(find_greatest(-3, -8, -1)).to eq(-1)
  end

  it 'returns the greatest number when all three numbers are equal' do
    expect(find_greatest(5, 5, 5)).to eq(5)
  end

  it 'returns the greatest number when one number is greater than the other two' do
    expect(find_greatest(12, 6, 9)).to eq(12)
  end

  it 'returns the greatest number when one number is equal to the other two' do
    expect(find_greatest(7, 7, 7)).to eq(7)
  end
end
