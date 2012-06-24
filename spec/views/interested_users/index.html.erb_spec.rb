require 'spec_helper'

describe "interested_users/index" do
  before(:each) do
    assign(:interested_users, [
      stub_model(InterestedUser,
        :name => "Name",
        :email => "Email"
      ),
      stub_model(InterestedUser,
        :name => "Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of interested_users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
