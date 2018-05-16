module Lines
  require './line.rb'

  LINES = {
      GINZA: Line.new(1, "東京メトロ銀座線", "とうきょうめとろぎんざせん"),
      MARUNOUCHI: Line.new(2, "東京メトロ丸ノ内線", "とうきょうめとろまるのうちせん"),
      HIBIYA: Line.new(3, "東京メトロ日比谷線", "とうきょうめとろひびやせん"),
      TOZAI: Line.new(4, "東京メトロ東西線", "とうきょうめとろとうざいせん")

  }.freeze


  def getLine(name)
    LINES.find {|_, line| line.name == name}[1]
  end
end