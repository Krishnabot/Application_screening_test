def convert_number(number, from, to)
    conversions = {
      "decimal" => {
        "octal" => ->(num) { num.to_s(8) },
        "binary" => ->(num) { num.to_s(2) }
      },
      "octal" => {
        "decimal" => ->(num) { num.to_i(8) },
        "binary" => ->(num) { num.to_i(8).to_s(2) }
      },
      "binary" => {
        "decimal" => ->(num) { num.to_i(2) },
        "octal" => ->(num) { num.to_i(2).to_s(8) }
      }
    }
  
    if conversions.key?(from) && conversions[from].key?(to)
      return conversions[from][to].call(number)
    else
      return "Invalid number system"
    end
  end