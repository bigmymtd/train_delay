class Delay
  attr_reader :line, :delay_status, :delay_time

  def initialize(line, delay_time)
    @line = line
    @delay_status = '遅延'
    @delay_time = delay_time
  end
end