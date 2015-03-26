require 'timesheets/presenters/collection'

describe WeekSheet::Timesheets::Presenters::Collection do
  context "getting the timesheets grouped by status" do
    let(:approved) { double("approved", status: "approved") }
    let(:draft) { double("draft", status: "draft") }
    let(:timesheets) { [draft, approved] }
    let(:presenter) { WeekSheet::Timesheets::Presenters::Collection.for(timesheets) }
    it "exposes those in status draft" do
      expect{|b| presenter.draft(&b) }.to yield_successive_args(draft)
    end

    it "exposes those in status approved" do
      expect{|b| presenter.approved(&b) }.to yield_successive_args(approved)
    end
  end
end
