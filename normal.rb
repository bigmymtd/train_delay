class Normal
  attr_reader :line

  def initialize(line)
    @line = line
    @delay_status = '正常'
  end
end