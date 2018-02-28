def translate(string)
  string.split.map{ |x| pigLatin(x) }.join(' ')
end

def pigLatin(word)
  if word[0].downcase.ord == word[0].ord + 32
    capital = true
  else
    capital = false
  end

  word.sub!(/^[bcdfghjklmnprstvxz]+(?!q)|^[bcdfghjklmnprstvxz]*qu/i) do |match|
    match + '***'
  end

  temp_words = word.split('***')

  if temp_words.length > 1
    pig_latin =  temp_words[1] + temp_words[0] + 'ay'
  else
    pig_latin =  temp_words[0] + 'ay'
  end

  if capital
    return pig_latin.capitalize
  else
    return pig_latin
  end

end