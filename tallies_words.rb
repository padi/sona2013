class TalliesWords
  def self.execute text
    tally = {}
    text = cleanup text

    text.split.each do |word|
      unless tally[word]
        tally.merge!({word => 1})
      else
        tally[word] += 1
      end
    end

    tally
  end

  private

  def self.cleanup text
    text.downcase.gsub(/[^a-z\s%-]/,'')
  end
end
