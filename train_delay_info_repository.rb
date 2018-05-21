module TrainDelayInfoRepository
  require 'csv'
  load './lines.rb'
  load './delay_statuses.rb'
  load './delay_time.rb'
  load './train_delay_list.rb'
  load './train_statuses.rb'
  include Lines
  include DelayStatuses
  include TrainStatuses

  def get_train_delay_list
    csv_data = CSV.read('delay.csv')

    list = csv_data.map do |data|
      getTrainStatus(
          getLine(data[0]),
          getStatus(data[1]).status,
          DelayTime.new(data[2])
      )
    end
    TrainDelayList.new(list)
  end
end
