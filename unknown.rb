class Unknown
  attr_reader :line, :delay_status

  def initialize(line)
    @line = line
    @delay_status = '不明'
  end
end