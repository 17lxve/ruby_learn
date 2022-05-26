def encrypt_letter(letter,shift)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  unless alphabet.include? letter.downcase
    return letter
  end
  cap = letter == letter.upcase
  i = alphabet.index letter.downcase
  unless cap
    alphabet[(i+shift)%26]
  else
    alphabet[(i+shift)%26].upcase
  end
end
def encrypt(sentence, shift)
  sentence = sentence.chars
  sentence.map { |e| encrypt_letter(e, shift) }.join
end
def main
  puts 'Enter plaintext'
  plaintext = gets.chomp
  cipher = encrypt(plaintext, 5)
  puts cipher
end
main
