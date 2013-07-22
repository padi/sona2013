class TalliesWords
  def self.execute text
    result = {}
    text.downcase.gsub(/[^a-z\s%-]/,'').split.each do |word|
      result.merge!({word => 1})
    end
    result
  end
end
