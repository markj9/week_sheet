Given(/^there are no timesheets for a user$/) do
end


When(/^I go to the user timesheets display page$/) do
  visit for_user_timesheets_url
end

Then(/^I should see that there are no timesheets$/) do
  page.should have_content("There are no timesheets")
end

Timesheet = Struct.new :status, :total_hours
Given(/^there are some timesheets for a user$/) do
  @timesheets = [
    Timesheet.new("draft", "40"),
    Timesheet.new("draft", "45"),
    Timesheet.new("approved", "42")
  ]
end

Then(/^I should see the user's timesheets grouped by status$/) do
  @timesheets.each do |timesheet|
    within(".#{timesheet.status}") do
      page.should have_css(".timesheet", text: timesheet.total_hours)
    end
  end
end
