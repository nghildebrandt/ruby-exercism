module BookKeeping
  VERSION = 5
end

class Gigasecond
  def self.from(time)
    gigasecond = 1000000000
    time + gigasecond
  end
end
