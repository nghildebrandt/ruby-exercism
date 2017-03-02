module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(string1, string2)
    if string1.length != string2.length
      raise ArgumentError.new('Arguments don\'t have an equal length.')
    end

    comparison string1, string2
  end

  def self.comparison(string1, string2)
    hamming = 0
    0.upto(string1.length) do |i|
      hamming += 1 if string1[i] != string2[i]
    end
    hamming
  end
end
