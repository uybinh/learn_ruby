class Book
  attr_writer :title
  def title
    (titleize(@title))
  end
end


LOWER_WORDS = ['the', 'a', 'an', 'and', 'or', 'in', 'of', 'on']
def titleize(title)
  words = title.split
  words.map! do |word|
    if !LOWER_WORDS.include?(word)
      word.capitalize
    else
      word
    end
  end
  words[0].capitalize!
  words.join(' ')
end