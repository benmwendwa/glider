require "spec_helper"

describe RequestDocsController do
  describe "routing" do

    it "routes to #index" do
      get("/request_docs").should route_to("request_docs#index")
    end

    it "routes to #new" do
      get("/request_docs/new").should route_to("request_docs#new")
    end

    it "routes to #show" do
      get("/request_docs/1").should route_to("request_docs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/request_docs/1/edit").should route_to("request_docs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/request_docs").should route_to("request_docs#create")
    end

    it "routes to #update" do
      put("/request_docs/1").should route_to("request_docs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/request_docs/1").should route_to("request_docs#destroy", :id => "1")
    end

  end
end
