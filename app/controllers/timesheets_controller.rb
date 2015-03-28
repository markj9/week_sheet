require 'timesheets'
class TimesheetsController < ApplicationController
  def for_user
    @timesheets = WeekSheet::Timesheets.for_user
  end
end
