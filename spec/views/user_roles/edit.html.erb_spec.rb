require 'spec_helper'

describe "user_roles/edit" do
  before(:each) do
    @user_role = assign(:user_role, stub_model(UserRole))
  end

  it "renders the edit user_role form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_roles_path(@user_role), :method => "post" do
    end
  end
end
