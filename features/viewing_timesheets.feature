Feature:  Viewing the timesheets for a user

  Scenario:  No timesheets for a user
    Given there are no timesheets for a user
    When I go to the user timesheets display page
    Then I should see that there are no timesheets

  Scenario:  Some timesheets
    Given there are some timesheets for a user
    When I go to the user timesheets display page
    Then I should see the user's timesheets grouped by status
