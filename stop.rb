class Stop
  attr_reader :line, :delay_status

  def initialize(line)
    @line = line
    @delay_status = '運行中止'
  end
end