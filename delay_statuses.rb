module DelayStatuses
  load './delay_status.rb'

  DELAY_STATUSES = {
      normal: DelayStatus.new('正常'),
      delay: DelayStatus.new('遅延'),
      stop: DelayStatus.new('運行中止'),
      unknown: DelayStatus.new('不明'),
  }.freeze

  def getStatus(status)
    DELAY_STATUSES.find {|_, delay_status| delay_status.status == status}[1]
  end
end