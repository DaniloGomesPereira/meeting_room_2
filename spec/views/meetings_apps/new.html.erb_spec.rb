require 'rails_helper'

RSpec.describe "meetings_apps/new", type: :view do
  before(:each) do
    assign(:meetings_app, MeetingsApp.new(
      title: "MyString",
      description: "MyString",
      user_id: 1
    ))
  end

  it "renders new meetings_app form" do
    render

    assert_select "form[action=?][method=?]", meetings_apps_path, "post" do

      assert_select "input[name=?]", "meetings_app[title]"

      assert_select "input[name=?]", "meetings_app[description]"

      assert_select "input[name=?]", "meetings_app[user_id]"
    end
  end
end
