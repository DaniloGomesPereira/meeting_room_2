require 'rails_helper'

RSpec.describe "meetings_apps/edit", type: :view do
  before(:each) do
    @meetings_app = assign(:meetings_app, MeetingsApp.create!(
      title: "MyString",
      description: "MyString",
      user_id: 1
    ))
  end

  it "renders the edit meetings_app form" do
    render

    assert_select "form[action=?][method=?]", meetings_app_path(@meetings_app), "post" do

      assert_select "input[name=?]", "meetings_app[title]"

      assert_select "input[name=?]", "meetings_app[description]"

      assert_select "input[name=?]", "meetings_app[user_id]"
    end
  end
end
