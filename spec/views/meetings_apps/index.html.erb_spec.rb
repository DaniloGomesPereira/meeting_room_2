require 'rails_helper'

RSpec.describe "meetings_apps/index", type: :view do
  before(:each) do
    assign(:meetings_apps, [
      MeetingsApp.create!(
        title: "Title",
        description: "Description",
        user_id: 2
      ),
      MeetingsApp.create!(
        title: "Title",
        description: "Description",
        user_id: 2
      )
    ])
  end

  it "renders a list of meetings_apps" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
