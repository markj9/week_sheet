require 'timesheets/presenters/collection'
Timesheet = Struct.new :status, :total_hours
class TimesheetsController < ApplicationController
  def for_user
    timesheets = [
      Timesheet.new("draft", "40"),
      Timesheet.new("draft", "45"),
      Timesheet.new("approved", "42")
    ]
    @timesheets = WeekSheet::Timesheets::Presenters::Collection.for(timesheets)
  end
end
