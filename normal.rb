class Normal
  attr_reader :line, :delay_status

  def initialize(line)
    @line = line
    @delay_status = '正常'
  end
end