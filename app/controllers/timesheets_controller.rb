Timesheet = Struct.new :status, :total_hours
class TimesheetsController < ApplicationController
  def index
    @timesheets = Object.new
    def @timesheets.draft(&block)
    [
      Timesheet.new("draft", "40"),
      Timesheet.new("draft", "45"),
    ].each(&block)
    end
    def @timesheets.approved(&block)
      [
        Timesheet.new("approved", "42")
      ].each(&block)
    end
  end
end
