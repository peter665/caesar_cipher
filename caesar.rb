def caesar_cipher str, n
  letters = ('a'..'z').to_a
  result = ""
  str.split("").each do |s|
    if s.match(/[a-zA-Z]/)
      index = letters.index(s.downcase).to_i+n
      index = index > letters.length-1 ? index - 26 : index
      result = result + letters[index]
    else
      result = result + s
    end
  end
  result
end
