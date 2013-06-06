class DealsController < ApplicationController
  # GET /deals
  # GET /deals.json
  def index
    @deals = Deal.all
    @companies = Company.all
    @approvals = Approval.all
    @comments = Comment.all
    @get_signatures = GetSignature.all
    @signatures = Signature.all
    @uploads = Upload.all
    @inviteds = Invited.all
    @request_docs = RequestDoc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deals }
    end
  end

  # GET /deals/1
  # GET /deals/1.json
  def show
    @deal = Deal.find(params[:id])
    @company = Company.find(params[:id])
    @approvals = Approval.find(params[:id])
    @comments = Comment.find(params[:id])
    @get_signatures = GetSignature.find(params[:id])
    @signature = Signature.find(params[:id])
    @upload = Upload.find(params[:id])
    @invited = Invited.find(params[:id])   
    @request_doc = RequestDoc.find(params[:id])



    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @deal }
    end
  end

  # GET /deals/new
  # GET /deals/new.json
  def new
    @deal = Deal.new
    @company = Company.new
    @approval = Approval.new
    @comment = Comment.new
    @get_signature = GetSignature.new
    @signature = Signature.new
    @upload = Upload.new
    @invited = Invited.new
    @request_doc = RequestDoc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @deal }
    end
  end

  # GET /deals/1/edit
  def edit
    @deal = Deal.find(params[:id])
  end

  # POST /deals
  # POST /deals.json
  def create
    @deal = Deal.new(params[:deal])

    respond_to do |format|
      if @deal.save
        format.html { redirect_to @deal, notice: 'Deal was successfully created.' }
        format.json { render json: @deal, status: :created, location: @deal }
      else
        format.html { render action: "new" }
        format.json { render json: @deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /deals/1
  # PUT /deals/1.json
  def update
    @deal = Deal.find(params[:id])

    respond_to do |format|
      if @deal.update_attributes(params[:deal])
        format.html { redirect_to @deal, notice: 'Deal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @deal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deals/1
  # DELETE /deals/1.json
  def destroy
    @deal = Deal.find(params[:id])
    @deal.destroy

    respond_to do |format|
      format.html { redirect_to deals_url }
      format.json { head :no_content }
    end
  end
end
