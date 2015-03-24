require 'timesheets/presenters/collection'

describe WeekSheet::Timesheets::Presenters::Collection do
  context "getting the timesheets grouped by status" do
    it "exposes those in status draft" do
      draft = double("draft", status: "draft")
      approved = double("approved", status: "approved")
      timesheets = [draft, approved]

      presenter = WeekSheet::Timesheets::Presenters::Collection.for(timesheets)
      expect{|b| presenter.draft(&b) }.to yield_successive_args(draft)
    end
    it "exposes those in status approved" do
      draft = double("draft", status: "draft")
      approved = double("approved", status: "approved")
      timesheets = [draft, approved]

      presenter = WeekSheet::Timesheets::Presenters::Collection.for(timesheets)
      expect{|b| presenter.approved(&b) }.to yield_successive_args(approved)
    end
  end
end
