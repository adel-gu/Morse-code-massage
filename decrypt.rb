# Morse code Hash
MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}.freeze

# Decode a single charachter
def decode_char(char)
  # get the letter from morse code hash
  MORSE_CODE[char]
end

# Decode a word
def decode_word(word)
  # split word to an array split by space
  word_arr = word.split(' ')
  decoded_word = ""

  # decode each charachter inside word
  word_arr.each do |char|
    decoded_word += decode_char(char)
  end

  # return result
  decoded_word
end

# Decode a sentence
def decode(sentence)
  # split sentence to an array on each tow spaces long
  sentence_arr = sentence.split('  ')
  decoded_sentence = ""

  # Decode each word inside sentence_arr
  sentence_arr.each do |word|
    decoded_sentence += decode_word(word)
    decoded_sentence += " "
  end
  # Return resut
  decoded_sentence.strip
end

p (decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'))
# A BOX FULL OF RUBIES
