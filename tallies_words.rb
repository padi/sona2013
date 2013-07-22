class TalliesWords
  def self.execute text
    result = []
    text = cleanup text

    text.split.each do |word|
      index = result.find_index {|e| e[word]}
      unless index
        result << {word => 1}
      else
        result[index][word] += 1
      end
    end

    result.sort {|a, b| b.values.first <=> a.values.first}
  end

  private

  def self.cleanup text
    text.downcase.gsub(/[^a-z\s%-]/,'')
  end
end
