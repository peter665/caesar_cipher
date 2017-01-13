def caesar_cipher str, n
  letters = ('a'..'z').to_a
  result = ""
  str.split("").each do |s|
    index = letters.index(s).to_i+n
    index = index > letters.length-1 ? index - 26 : index  
    result = result + letters[index]
  end
  result
end
