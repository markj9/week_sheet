require 'timesheets'
require 'timesheets/presenters/collection'

describe WeekSheet::Timesheets do
  describe ".for_user" do
    it "returns the collection wrapped in the presenter" do
      presenter = double
      WeekSheet::Timesheets::Presenters::Collection.stub(:for) { presenter }

      expect(WeekSheet::Timesheets.for_user).to be (presenter)
    end
  end
end
