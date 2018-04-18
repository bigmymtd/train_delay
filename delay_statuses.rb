module DelayStatuses
  require './delay_status.rb'

  DELAY_STATUSES = {
      normal: DelayStatus.new('通常'),
      delay: DelayStatus.new('遅延')
  }.freeze

  def getStatus(status)
    DELAY_STATUSES.find {|_, delay_status| delay_status.status == status}[1]
  end
end