require 'rails_helper'

RSpec.describe CalendarController, :type => :controller do

  describe "GET edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

end
