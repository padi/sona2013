require_relative 'tallies_words'

# text = File.read('./sample.txt')
text = File.read('./speech.txt')

results = TalliesWords.execute(text)

puts results.count # 2983 unique words!

threshold = 15
word_count = 0
results.each do |result|
  word = result.keys.first
  count = result.values.first
  if count > threshold
    puts "#{word}: #{count}" if count > threshold
    word_count += 1
  end
end

puts word_count

# threshold | word_count
#     0     |   2983
#     2     |    557
#     5     |    225
#    10     |    114

