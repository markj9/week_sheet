Given(/^there are no timesheets$/) do
end

Timesheet = Struct.new :status, :total_hours

When(/^I go to the timesheets display page$/) do
  visit timesheets_url
end

Then(/^I should see that there are no timesheets$/) do
  page.should have_content("There are no timesheets")
end

Given(/^there are some timesheets$/) do
  @timesheets = [
    Timesheet.new("draft", "40"),
    Timesheet.new("draft", "45"),
    Timesheet.new("approved", "42")
  ]
end

Then(/^I should see the timesheets grouped by status$/) do
  @timesheets.each do |timesheet|
    within(".#{timesheet.status}") do
      page.should have_css(".timesheet", text: timesheet.total_hours)
    end
  end
end
