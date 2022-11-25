def caesar_cypher(string, number)
# Deal with negative numbers
if number <0
    return caesar_cypher(string, number+26)
end

# Split the string into a character array and convert to integer values
ascii = string.chars.map(&:ord)
# ascii =string.each_byte 

# Init output variable
output =[]

ascii.map do |int_char|
    #uppercase characters
    if (int_char >= 65 && int_char <= 90) 
        output << (((int_char - 65 + number) % 26) + 65);
      #lowercase characters
    elsif (int_char >= 97 && int_char <= 122) 
        output << (((int_char - 97 + number) % 26) + 97); 
    # Dont change special characters like " ", "?", "."
    else 
        output << int_char
    end
end

# puts "Ascii #{ascii} \n cyphered #{output}"

# Convert from Ascii to char and join to a string
output.map!{|i| i.chr}
output= output.join

puts "Original string: \"#{string}\", cyphered string: \"#{output}\""

end

caesar_cypher("E tu Brutus?", 5)