require 'timesheets/presenters/collection'

module WeekSheet
  module Timesheets
    def self.for_user
      Presenters::Collection.for(::Timesheet.for_user)
    end
  end
end
