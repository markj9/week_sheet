Feature:  Viewing the timesheets

  Scenario:  No timesheets
    Given there are no timesheets
    When I go to the timesheets display page
    Then I should see that there are no timesheets

  Scenario:  Some timesheets
    Given there are some timesheets
    When I go to the timesheets display page
    Then I should see the timesheets grouped by status
