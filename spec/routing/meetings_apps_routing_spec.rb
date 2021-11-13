require "rails_helper"

RSpec.describe MeetingsAppsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/meetings_apps").to route_to("meetings_apps#index")
    end

    it "routes to #new" do
      expect(get: "/meetings_apps/new").to route_to("meetings_apps#new")
    end

    it "routes to #show" do
      expect(get: "/meetings_apps/1").to route_to("meetings_apps#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/meetings_apps/1/edit").to route_to("meetings_apps#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/meetings_apps").to route_to("meetings_apps#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/meetings_apps/1").to route_to("meetings_apps#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/meetings_apps/1").to route_to("meetings_apps#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/meetings_apps/1").to route_to("meetings_apps#destroy", id: "1")
    end
  end
end
