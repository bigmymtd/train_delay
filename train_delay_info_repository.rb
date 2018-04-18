module TrainDelayInfoRepository
  require 'csv'
  require './lines.rb'
  require './delay_statuses.rb'
  require './train_delay.rb'
  require './delay_time.rb'
  require './train_delay_list.rb'
  include Lines
  include DelayStatuses

  def get_train_delay_list
    csv_data = CSV.read('delay.csv')

    list = csv_data.map do |data|
      TrainDelay.new(
          getLine(data[0]),
          getStatus(data[1]),
          DelayTime.new(data[2])
      )
    end
    TrainDelayList.new(list)
  end
end