Given(/^there are no timesheets$/) do
end

When(/^I go to the timesheets display page$/) do
  visit timesheets_url
end

Then(/^I should see that there are no timesheets$/) do
  page.should have_content("There are no timesheets")
end

Given(/^there are some timesheets$/) do
pending # express the regexp above with the code you wish you had
end

Then(/^I should see the timesheets grouped by status$/) do
pending # express the regexp above with the code you wish you had
end
