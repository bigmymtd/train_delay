module Lines
  require './line.rb'

  LINES = {
      YAMANOTE: Line.new(1, "山手線"),
      KEIKYU: Line.new(2, "京急線")
  }.freeze


  def getLine(name)
    LINES.find {|_, line| line.name == name}[1]
  end
end