def caesar_cipher(string, shift)
  text_array = string.to_s.split("")

  text_array.map! do |character|
    character = character.ord
    if character >= 97
      character = 97 + ((character - 97 + shift)%26)
    elsif character >= 65
      character = 65 + ((character - 65 + shift)%26)
    end
    character = character.chr
  end

  text_array.join
end


def caesar_cipher_alt(string, shift)
  up_cases = ("A".."Z").to_a
  down_cases = ("a".."z").to_a
  text_array = string.to_s.split("")

  text_array.map! do |character|
    if up_cases.include? character
      character = up_cases[(up_cases.index(character) + shift)%26]
    elsif down_cases.include? character
      character = down_cases[(down_cases.index(character) + shift)%26]
    else
      character
    end
  end

  text_array.join
end
