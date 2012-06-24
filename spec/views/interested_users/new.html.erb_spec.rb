require 'spec_helper'

describe "interested_users/new" do
  before(:each) do
    assign(:interested_user, stub_model(InterestedUser,
      :name => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new interested_user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => interested_users_path, :method => "post" do
      assert_select "input#interested_user_name", :name => "interested_user[name]"
      assert_select "input#interested_user_email", :name => "interested_user[email]"
    end
  end
end
