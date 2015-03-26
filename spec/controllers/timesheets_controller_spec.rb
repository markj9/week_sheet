require 'rails_helper'
describe TimesheetsController, type: :controller do
  describe "GET /for_user" do
    it "uses a timesheets collection presenter" do
      timesheets_presenter = double
      WeekSheet::Timesheets::Presenters::Collection.stub(:for) { timesheets_presenter }
      get :for_user
      expect(assigns(:timesheets)).to be(timesheets_presenter)
    end
  end
end
