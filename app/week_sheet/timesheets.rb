require 'timesheets/presenters/collection'
Timesheet = Struct.new :status, :total_hours
module WeekSheet
  module Timesheets
    def self.for_user
      timesheets = [
        Timesheet.new("draft", "40"),
        Timesheet.new("draft", "45"),
        Timesheet.new("approved", "42")
      ]
      Presenters::Collection.for(timesheets)
    end
  end
end
