require "spec_helper"

describe DealMembersController do
  describe "routing" do

    it "routes to #index" do
      get("/deal_members").should route_to("deal_members#index")
    end

    it "routes to #new" do
      get("/deal_members/new").should route_to("deal_members#new")
    end

    it "routes to #show" do
      get("/deal_members/1").should route_to("deal_members#show", :id => "1")
    end

    it "routes to #edit" do
      get("/deal_members/1/edit").should route_to("deal_members#edit", :id => "1")
    end

    it "routes to #create" do
      post("/deal_members").should route_to("deal_members#create")
    end

    it "routes to #update" do
      put("/deal_members/1").should route_to("deal_members#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/deal_members/1").should route_to("deal_members#destroy", :id => "1")
    end

  end
end
