class TrainDelayList
  attr_reader :train_delay

  def initialize(train_delay)
    @train_delay = train_delay
  end

  def sort
    @train_delay.sort_by{|obj| obj.line.name_hiragana}
  end
end