class Timer
  #write your code here
  def initialize()
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def seconds() 
    return @seconds
  end

  def seconds=(seconds)
    @seconds = seconds % 60
    @minutes = (seconds - @seconds) / 60 % 60
    @hours = (seconds - @seconds - 60 * @minutes) / 3600
  end

  def time_string()
    return [padded(@hours), padded(@minutes), padded(@seconds)].join(":")
  end

  def padded(number)
    number_s = number.to_s
    if(number_s.length==1)
      number_s = "0" + number_s
    end
    return number_s
  end

end
