class Line
  attr_reader :id, :name, :name_hiragana

  def initialize(id, name, name_hiragana)
    @id = id
    @name = name
    @name_hiragana = name_hiragana
  end
end