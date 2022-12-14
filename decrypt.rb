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

def get_char(code)
  # get the letter from morse code hash
  MORSE_CODE[code]
end

# String => String
# Convert a code char to a latter.
def decode(code_seq)
  # split code_seq to an array on each tow spaces long
  code_seq_arr = code_seq.split('  ')

  # Hold decoded charachters
  decoded_seq = ''

  # iterate throught each element in the code_seq_arr
  code_seq_arr.each do |code|
    # split each element to an array on each one space long
    sub_code_seq_arr = code.split

    # iterate throught each element in the sub_code_seq_arr and decode each element.
    sub_code_seq_arr.each do |c|
      decoded_seq += get_char(c)
    end

    # when the loop ends this means creating a space between words.
    decoded_seq += ' '
  end

  # return the result
  decoded_seq
end

puts(decode('-- -.--   -. .- -- .'))
