class TrainDelay
  attr_reader :line, :delay_status, :delay_time

  def initialize(line, delay_status, delay_time)
    @line = line
    @delay_status = delay_status
    @delay_time = delay_time
  end
end