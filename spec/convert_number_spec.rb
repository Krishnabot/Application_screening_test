require_relative '../convert_number'

RSpec.describe "#convert_number" do
  it "converts decimal to octal" do
    expect(convert_number(42, "decimal", "octal")).to eq("52")
  end

  it "converts decimal to binary" do
    expect(convert_number(42, "decimal", "binary")).to eq("101010")
  end

  it "converts octal to decimal" do
    expect(convert_number("52", "octal", "decimal")).to eq(42)
  end

  it "converts octal to binary" do
    expect(convert_number("52", "octal", "binary")).to eq("101010")
  end

  it "converts binary to decimal" do
    expect(convert_number("101010", "binary", "decimal")).to eq(42)
  end

  it "converts binary to octal" do
    expect(convert_number("101010", "binary", "octal")).to eq("52")
  end

  it "returns error message for invalid from number system" do
    expect(convert_number(42, "hex", "binary")).to eq("Invalid number system")
  end

  it "returns error message for invalid to number system" do
    expect(convert_number(42, "decimal", "hex")).to eq("Invalid number system")
  end
end
