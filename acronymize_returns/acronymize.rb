def acronymize(sentence)
  if sentence == ''
    ''
  else
    sentence.upcase.split.map { |word| word[0] }.join
  end
end
