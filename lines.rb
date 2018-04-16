module Lines
  LINES = {
      YAMANOTE: Line.new(1, "山手線"),
      KEIKYU: Line.new(2, "京急線")
  }.freeze


  def getLine(name)
    LINES.find do |line|
      line.name == name
    end
  end
end