def substrings(word, dictionary)
  new_dict = Hash.new()
  dictionary.each { |e| if word.include? e.downcase;new_dict[e] = word.scan(e.downcase).length;end}
  new_dict
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
