require 'rails_helper'
describe TimesheetsController, type: :controller do
  describe "GET /for_user" do
    it "uses a timesheets collection presenter" do
      timesheets_presenter = double
      const = double
      allow(const).to receive_messages(for: timesheets_presenter)
      stub_const("WeekSheet::Timesheets::Presenters::Collection",
                 const)
      get :for_user
      expect(assigns(:timesheets)).to be(timesheets_presenter)
    end
  end
end
