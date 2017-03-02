module BookKeeping
  VERSION = 3
end

class Raindrops
  require 'prime'
  RAINDROP_SPEAK = { 3 => "Pling", 5 => "Plang", 7 => "Plong"}

  def self.convert(number)
    result = number.prime_division
                   .map(&:first)
                   .map{ |v| RAINDROP_SPEAK[v]}
                   .compact.join("")

    return number if result.empty?
    result
  end 
  puts convert(15)
end

    
