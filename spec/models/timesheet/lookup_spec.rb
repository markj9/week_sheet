require 'active_record_spec_helper'
require 'timesheet'

describe "Looking up timesheets" do
    describe ".for_user" do
      context "when there are no timesheets" do
        it "returns an empty list" do
          Timesheet.destroy_all
          expect(Timesheet.for_user).to be_empty
        end
      end

      it "returns all the timesheets in the system" do
        approved = Timesheet.create! status: "approved", total_hours: 55
        draft = Timesheet.create! status: "draft", total_hours: 29
        expect(Timesheet.for_user).to eq([approved, draft])
      end
    end
end
