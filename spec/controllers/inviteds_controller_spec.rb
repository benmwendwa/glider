require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe InvitedsController do

  # This should return the minimal set of attributes required to create a valid
  # Invited. As you add validations to Invited, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "deal_id" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # InvitedsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all inviteds as @inviteds" do
      invited = Invited.create! valid_attributes
      get :index, {}, valid_session
      assigns(:inviteds).should eq([invited])
    end
  end

  describe "GET show" do
    it "assigns the requested invited as @invited" do
      invited = Invited.create! valid_attributes
      get :show, {:id => invited.to_param}, valid_session
      assigns(:invited).should eq(invited)
    end
  end

  describe "GET new" do
    it "assigns a new invited as @invited" do
      get :new, {}, valid_session
      assigns(:invited).should be_a_new(Invited)
    end
  end

  describe "GET edit" do
    it "assigns the requested invited as @invited" do
      invited = Invited.create! valid_attributes
      get :edit, {:id => invited.to_param}, valid_session
      assigns(:invited).should eq(invited)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Invited" do
        expect {
          post :create, {:invited => valid_attributes}, valid_session
        }.to change(Invited, :count).by(1)
      end

      it "assigns a newly created invited as @invited" do
        post :create, {:invited => valid_attributes}, valid_session
        assigns(:invited).should be_a(Invited)
        assigns(:invited).should be_persisted
      end

      it "redirects to the created invited" do
        post :create, {:invited => valid_attributes}, valid_session
        response.should redirect_to(Invited.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved invited as @invited" do
        # Trigger the behavior that occurs when invalid params are submitted
        Invited.any_instance.stub(:save).and_return(false)
        post :create, {:invited => { "deal_id" => "invalid value" }}, valid_session
        assigns(:invited).should be_a_new(Invited)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Invited.any_instance.stub(:save).and_return(false)
        post :create, {:invited => { "deal_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested invited" do
        invited = Invited.create! valid_attributes
        # Assuming there are no other inviteds in the database, this
        # specifies that the Invited created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Invited.any_instance.should_receive(:update_attributes).with({ "deal_id" => "MyString" })
        put :update, {:id => invited.to_param, :invited => { "deal_id" => "MyString" }}, valid_session
      end

      it "assigns the requested invited as @invited" do
        invited = Invited.create! valid_attributes
        put :update, {:id => invited.to_param, :invited => valid_attributes}, valid_session
        assigns(:invited).should eq(invited)
      end

      it "redirects to the invited" do
        invited = Invited.create! valid_attributes
        put :update, {:id => invited.to_param, :invited => valid_attributes}, valid_session
        response.should redirect_to(invited)
      end
    end

    describe "with invalid params" do
      it "assigns the invited as @invited" do
        invited = Invited.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Invited.any_instance.stub(:save).and_return(false)
        put :update, {:id => invited.to_param, :invited => { "deal_id" => "invalid value" }}, valid_session
        assigns(:invited).should eq(invited)
      end

      it "re-renders the 'edit' template" do
        invited = Invited.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Invited.any_instance.stub(:save).and_return(false)
        put :update, {:id => invited.to_param, :invited => { "deal_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested invited" do
      invited = Invited.create! valid_attributes
      expect {
        delete :destroy, {:id => invited.to_param}, valid_session
      }.to change(Invited, :count).by(-1)
    end

    it "redirects to the inviteds list" do
      invited = Invited.create! valid_attributes
      delete :destroy, {:id => invited.to_param}, valid_session
      response.should redirect_to(inviteds_url)
    end
  end

end
