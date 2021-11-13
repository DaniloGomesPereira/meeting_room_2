require 'rails_helper'

RSpec.describe "meetings_apps/show", type: :view do
  before(:each) do
    @meetings_app = assign(:meetings_app, MeetingsApp.create!(
      title: "Title",
      description: "Description",
      user_id: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/2/)
  end
end
