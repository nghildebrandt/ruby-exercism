module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(base)
    base.chars.map do |char|
      case char
      when "A"
        "U"
      when "T"
        "A"
      when "C"
        "G"
      when "G"
        "C"
      else 
       return "" 
      end
    end.join
  end
end
      
