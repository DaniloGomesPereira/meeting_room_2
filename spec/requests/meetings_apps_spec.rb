 require 'rails_helper'

 RSpec.describe 'Meetings_apps', type: :request do
  describe '#index' do
    subject(:index_meetings_apps) { get '/meetings_apps' }

    it { is_expected.to eq(200) }
  end

  describe '#show' do
    subject(:show_meetings_apps) { get '/meetings_apps' }

    it { is_expected.to eq(200) }
  end

  describe '#create' do
    subject(:create_meetings_apps) { post '/meetings_apps' }

    it { is_expected.to eq(302) }
  end

  describe '#update' do
    subject(:update_meetings_apps) { post '/meetings_apps' }

    it { is_expected.to eq(302) }
  end

  # describe '#destroy' do
  #   subject(:destroy_meetings_apps) { delete '/meetings_apps' }

  #   it { is_expected.to eq(200) }
  # end

#   describe "DELETE /destroy" do
#     it "destroys the requested meetings_app" do
#       meetings_app = MeetingsApp.create! valid_attributes
#       expect {
#         delete meetings_app_url(meetings_app)
#       }.to change(MeetingsApp, :count).by(-1)
#     end

#     it "redirects to the meetings_apps list" do
#       meetings_app = MeetingsApp.create! valid_attributes
#       delete meetings_app_url(meetings_app)
#       expect(response).to redirect_to(meetings_apps_url)
#     end
#   end
 end
