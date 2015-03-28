class Timesheet < ActiveRecord::Base

  def self.for_user
    all
  end
end
