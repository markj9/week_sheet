require 'timesheets'
require 'timesheets/presenters/collection'

describe WeekSheet::Timesheets do
  describe ".for_user" do
    it "wraps the timesheets for a user in a presenter" do
      for_user = double "timesheets"
      allow(::Timesheet).to receive(:for_user).and_return(for_user)
      presenter = double
      WeekSheet::Timesheets::Presenters::Collection.stub(:for).with(for_user) { presenter }

      expect(WeekSheet::Timesheets.for_user).to be (presenter)
    end
  end
end
