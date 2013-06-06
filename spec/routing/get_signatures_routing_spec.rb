require "spec_helper"

describe GetSignaturesController do
  describe "routing" do

    it "routes to #index" do
      get("/get_signatures").should route_to("get_signatures#index")
    end

    it "routes to #new" do
      get("/get_signatures/new").should route_to("get_signatures#new")
    end

    it "routes to #show" do
      get("/get_signatures/1").should route_to("get_signatures#show", :id => "1")
    end

    it "routes to #edit" do
      get("/get_signatures/1/edit").should route_to("get_signatures#edit", :id => "1")
    end

    it "routes to #create" do
      post("/get_signatures").should route_to("get_signatures#create")
    end

    it "routes to #update" do
      put("/get_signatures/1").should route_to("get_signatures#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/get_signatures/1").should route_to("get_signatures#destroy", :id => "1")
    end

  end
end
