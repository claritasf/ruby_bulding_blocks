
dictionary=["a", "an", "below", "cat", "case", "choose", "down", "deal", "date", "eat", "earn", "end", "face", "fake", "go","going","hello", "horn","how","howdy","it","i","low", "love", "own","part","partner","sit", "the",  "want"]

def substrings(string, dictionary)
  words = string.split
  result_hash = Hash.new (0)
  words.each do |word|
  	if dictionary.include?(word)
  		result_hash[word] += 1
  	end
  end
  result_hash = result_hash.sort_by {|word, count| count} 
  result_hash.reverse!
  print result_hash
end

puts "Write any string you want:"
string = gets.chomp.downcase

substrings(string, dictionary)
  






