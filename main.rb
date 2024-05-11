def substrings(words, dictionary)
  dictionary.reduce(Hash.new(0)) do |frequency, vocabulary|
      frequency[vocabulary] += words.downcase.scan(vocabulary).length
    frequency
  end
end
