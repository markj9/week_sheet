Given(/^there are no timesheets for a user$/) do
  Timesheet.destroy_all
end

Given(/^there are some timesheets for a user$/) do
  @timesheets = [
    Timesheet.create!(status:"draft", total_hours: 40),
    Timesheet.create!(status: "draft", total_hours: 45),
    Timesheet.create!(status: "approved", total_hours: 43)
  ]
end

When(/^I go to the user timesheets display page$/) do
  visit for_user_timesheets_url
end

Then(/^I should see that there are no timesheets$/) do
  page.should have_content("There are no timesheets")
end

Then(/^I should see the user's timesheets grouped by status$/) do
  @timesheets.each do |timesheet|
    within(".#{timesheet.status}") do
      page.should have_css(".timesheet", text: timesheet.total_hours)
    end
  end
end
