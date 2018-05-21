class Main
  load './train_delay_info_repository.rb'
  load './delay_statuses.rb'

  include TrainDelayInfoRepository
  include DelayStatuses

  def initialize
    get_train_delay_list.train_delay.each do |train_delay|
      line = train_delay.line.name
      status = train_delay.delay_status
      delay_time_text = train_delay.instance_variable_defined?(:@delay_time) ? "#{train_delay.delay_time.time}分遅れが出ています。" : ""
      p "#{line}は#{status}です。#{delay_time_text}"
    end
  end
end
