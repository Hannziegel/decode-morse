def decode_char(char)
  obj_morse = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '.----' => '1', '..---' => '2', '...--' => '3', '....-' => '4',
    '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8',
    '----.' => '9', '-----' => '0', ' ' => ' '
  }
  obj_morse[char]
end

def decode_word(word)
  string = ''
  word.split.each do |char|
    string += decode_char(char)
  end
  string
end

def decode_sentence(sentence)
  new_sentence = ''
  sentence.split('   ').each { |char| new_sentence += "#{decode_word(char)} " }
  new_sentence
end

puts decode_char('.-')
puts decode_sentence('-- -.--')
puts decode_sentence('-- -.--   -. .- -- .')
puts decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
