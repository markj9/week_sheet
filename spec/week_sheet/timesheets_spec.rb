require 'timesheets'
require 'timesheets/presenters/collection'

describe WeekSheet::Timesheets do
  describe ".for_user" do
    it "wraps the timesheets for a user in a presenter" do
      for_user = double "timesheets"
      stub_const("::Timesheet", stub(for_user: for_user))
      presenter = double
      WeekSheet::Timesheets::Presenters::Collection.stub(:for).with(for_user) { presenter }

      expect(WeekSheet::Timesheets.for_user).to be (presenter)
    end
  end
end
