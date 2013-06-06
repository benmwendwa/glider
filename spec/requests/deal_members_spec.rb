require 'spec_helper'

describe "DealMembers" do
  describe "GET /deal_members" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get deal_members_path
      response.status.should be(200)
    end
  end
end
