module TrainStatuses
  load './delay.rb'
  load './normal.rb'
  load './stop.rb'
  load './unknown.rb'

  def getTrainStatus(line, delay_status, delay_time)
    case delay_status
    when '遅延'
      Delay.new(line, delay_time)
    when '正常'
      Normal.new(line)
    when '運行中止'
      Stop.new(line)
    when '不明'
      Unknown.new(line)
    else
      raise StandardError
    end
  end
end