class Pangram
 
  def self.pangram?(phrase)
    str = removeSpaces(phrase)
    alphaNumeric(str) 
  end
  
  def self.removeSpaces(phrase)
    phrase.gsub(/\s+/, "")  
  end

  def self.alphaNumeric(phrase)
      phrase.gsub!(/[^A-Za-z]/,'') == phrase 
      unique(phrase)
  end
  
  def self.unique(phrase)
    str = phrase.downcase.chars.uniq
    numberOfChar(str)
  end

  def self.numberOfChar(phrase)
    unless phrase.length == 26
      raise ArgumentError.new('Expected false, got:#{phrase}. ')      
    else
      puts "true"
    end
  end

  puts pangram?('7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog')

end

