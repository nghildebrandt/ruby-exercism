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
    if phrase.length == 26
      puts true, "Expected true. This IS a pangram"
    else
      puts "Hello"
    end
  end

  puts pangram?('7h3 qu1ck brown fox jumps ov3r 7h3 lazy dog')

end

