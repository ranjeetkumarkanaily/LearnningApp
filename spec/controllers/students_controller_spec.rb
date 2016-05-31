require 'rails_helper'

RSpec.describe StudentsController, type: :controller do

  describe "GET #progress" do
    it "returns http success" do
      get :progress
      expect(response).to have_http_status(:success)
    end
  end

end
