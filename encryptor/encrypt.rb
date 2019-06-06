def encrypt(sentence)
  if sentence == ""
    return ""
  else
    #put alphabet into array
    alphabet = ("A".."Z").to_a

    # store split sentence in a variable
    characters = sentence.split("")

    # initialize an empty string which will store encryption
    encrypted_sentence = ""

    # loop through every character in sentence
    characters.each do |character|

      # check if letter is in alphabet
      if alphabet.include?(character)

        # check position in alphabet
        alphabet_index = alphabet.index(character)
        # find new character
        new_character = alphabet[alphabet_index - 3]
        # append new character to encrypted string
        encrypted_sentence += new_character
      else
        # append character without modification
        encrypted_sentence += character
      end
    end
  end
  # return encrypted string
  return encrypted_sentence
end

p encrypt("I AM TIRED") #=> "F XJ QFOBA"
