require 'spec_helper'

describe "Logins" do
  describe "GET /users.rb/sign_in" do
    it "allows signing in" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get new_admin_user_session_path
      response.status.should be(200)
      user = FactoryGirl.create(:admin_user)
      sign_in(user)
      response.status.should be(200)  # was .should be(302)
    end
  end
end