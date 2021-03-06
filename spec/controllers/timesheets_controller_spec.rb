require 'rails_helper'
describe TimesheetsController, type: :controller do
  describe "GET /for_user" do
    it "gets the timesheets for a user" do
      timesheets_presenter = double
      WeekSheet::Timesheets.stub(:for_user) { timesheets_presenter }
      get :for_user
      expect(assigns(:timesheets)).to be(timesheets_presenter)
    end
  end
end
