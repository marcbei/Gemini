require 'spec_helper'

describe "InterestedUsers" do
  describe "GET /interested_users" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get interested_users_path
      response.status.should be(200)
    end
  end
end
