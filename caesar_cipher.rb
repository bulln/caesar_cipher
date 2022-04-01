
  def caesar_cipher(string, shift)
    return unless string.is_a? String
    new_arr = string.bytes.map do |num|
      case num
      when 65..90
      ((num - 65 + shift) % 26) + 65
      when 97..122
      ((num - 97 + shift) % 26) + 97
      else
        num
      end
    end
    new_arr.map(&:chr).join('')
  end


# caesar_cipher("What a string!", 5)