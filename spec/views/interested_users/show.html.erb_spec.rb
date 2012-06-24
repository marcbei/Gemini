require 'spec_helper'

describe "interested_users/show" do
  before(:each) do
    @interested_user = assign(:interested_user, stub_model(InterestedUser,
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
  end
end
