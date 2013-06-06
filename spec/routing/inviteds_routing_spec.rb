require "spec_helper"

describe InvitedsController do
  describe "routing" do

    it "routes to #index" do
      get("/inviteds").should route_to("inviteds#index")
    end

    it "routes to #new" do
      get("/inviteds/new").should route_to("inviteds#new")
    end

    it "routes to #show" do
      get("/inviteds/1").should route_to("inviteds#show", :id => "1")
    end

    it "routes to #edit" do
      get("/inviteds/1/edit").should route_to("inviteds#edit", :id => "1")
    end

    it "routes to #create" do
      post("/inviteds").should route_to("inviteds#create")
    end

    it "routes to #update" do
      put("/inviteds/1").should route_to("inviteds#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/inviteds/1").should route_to("inviteds#destroy", :id => "1")
    end

  end
end
