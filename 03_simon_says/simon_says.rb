#write your code here
def echo word
  word
end

def shout word
  word.upcase
end

def repeat(word, num = 2)
  result = word
  (num - 1).times {result += ' ' + word}
  result
end

def start_of_word(string, num)
  string[0, num]
end

def first_word(string)
  string.split[0]
end

def titleize(string)
  words = string.capitalize.split
  new_words = []
  little = ['the', 'over', 'and']
  words.each do |word|
    if !little.include?(word)
      new_words.push word.capitalize
    else
      new_words.push word
    end
  end
  new_words.join(' ')
end
