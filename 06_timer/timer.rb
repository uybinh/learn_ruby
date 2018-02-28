class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    seconds = @seconds % 60
    minutes = @seconds / 60 % 60
    hours = @seconds / 3600
    return "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end

  def padded(num)
    if num < 10
      "0#{num}"
    else
      num.to_s
    end
  end
end
