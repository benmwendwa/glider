require "spec_helper"

describe ApprovalsController do
  describe "routing" do

    it "routes to #index" do
      get("/approvals").should route_to("approvals#index")
    end

    it "routes to #new" do
      get("/approvals/new").should route_to("approvals#new")
    end

    it "routes to #show" do
      get("/approvals/1").should route_to("approvals#show", :id => "1")
    end

    it "routes to #edit" do
      get("/approvals/1/edit").should route_to("approvals#edit", :id => "1")
    end

    it "routes to #create" do
      post("/approvals").should route_to("approvals#create")
    end

    it "routes to #update" do
      put("/approvals/1").should route_to("approvals#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/approvals/1").should route_to("approvals#destroy", :id => "1")
    end

  end
end
