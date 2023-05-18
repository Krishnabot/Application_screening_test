require_relative '../count_characters'

RSpec.describe 'count_characters' do
  it 'returns the correct character counts for a string with multiple characters' do
    input = "hello how are you"
    expected_output = { 'h' => 2, 'e' => 2, 'l' => 2, 'o' => 3, 'w' => 1, 'a' => 1, 'r' => 1, 'y' => 1, 'u' => 1 }

    expect(count_characters(input)).to eq(expected_output)
  end

  it 'returns empty character counts for an empty string' do
    input = ""
    expected_output = {}

    expect(count_characters(input)).to eq(expected_output)
  end

  it 'ignores whitespace and counts only characters' do
    input = "ab   c  d e"
    expected_output = { 'a' => 1, 'b' => 1, 'c' => 1, 'd' => 1, 'e' => 1 }

    expect(count_characters(input)).to eq(expected_output)
  end

  it 'handles uppercase characters and converts them to lowercase' do
    input = "AaBBbCc"
    expected_output = { 'a' => 2, 'b' => 3, 'c' => 2 }

    expect(count_characters(input)).to eq(expected_output)
  end

  it 'returns the correct character counts for a string with special characters' do
    input = "hello$%^world"
    expected_output = { 'h' => 1, 'e' => 1, 'l' => 3, 'o' => 2, '$' => 1, '%' => 1, '^' => 1, 'w' => 1, 'r' => 1, 'd' => 1 }

    expect(count_characters(input)).to eq(expected_output)
  end
end
