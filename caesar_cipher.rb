def caesar_cipher (string, integer) 
  down_chars = ('a'..'z').to_a
  up_chars = ('A'..'Z').to_a
  mod_arr = Array.new
  str_arr = string.split("")

  str_arr.each do |char|
    if down_chars.include?(char) 
      char = char.ord + integer
      char -= 26 if char > 122
      mod_arr << char.chr

      else if up_chars.include?(char)
        char = char.ord + integer
        char -= 26 if char > 90
        mod_arr << char.chr
      
      else
        mod_arr << char
      end
    end 
  end
  puts mod_arr.join.to_s
end

caesar_cipher("zyx", 1)
caesar_cipher("What a string!", 5)