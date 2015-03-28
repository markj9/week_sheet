require 'timesheets/presenters/collection'
Timesheet = Struct.new :status, :total_hours
module WeekSheet
  module Timesheets
    def self.for_user
      Presenters::Collection.for(::Timesheet.for_user)
    end
  end
end
