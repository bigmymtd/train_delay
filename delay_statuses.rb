module DelayStatuses
  DELAY_STATUSES = {
      normal: DelayStatus.new('通常'),
      delay: DelayStatus.new('遅延')
  }

  def getStatus(status)
    DELAY_STATUSES.find do |delay_status|
      delay_status.status == status
    end
  end
end