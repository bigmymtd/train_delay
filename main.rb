class Main
  require './train_delay_info_repository.rb'
  require './delay_statuses.rb'

  include TrainDelayInfoRepository
  include DelayStatuses

  def initialize
    get_train_delay_list.train_delay.each do |list|
      text = list.delay_status.status == DELAY_STATUSES[:normal].status ? "平常運転です" : "#{list.delay_status.status}で#{list.delay_time.time}分遅れです"
      p "#{list.line.name}は#{text}"
    end
  end
end
