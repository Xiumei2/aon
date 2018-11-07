class AondetailsController < ApplicationController
  before_action :set_aondetail, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name:"admin", password:"secret"

  # GET /aondetails
  # GET /aondetails.json
  def index
    @aondetails = Aondetail.all
  end

  # GET /aondetails/1
  # GET /aondetails/1.json
  def show
  end

  # GET /aondetails/new
  def new
    @aondetail = Aondetail.new
  end

  # GET /aondetails/1/edit
  def edit
  end

  # POST /aondetails
  # POST /aondetails.json
  def create
    @aondetail = Aondetail.new(aondetail_params)

    respond_to do |format|
      if @aondetail.save
        format.html { redirect_to @aondetail, notice: 'Aondetail was successfully created.' }
        format.json { render :show, status: :created, location: @aondetail }
      else
        format.html { render :new }
        format.json { render json: @aondetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aondetails/1
  # PATCH/PUT /aondetails/1.json
  def update
    respond_to do |format|
      if @aondetail.update(aondetail_params)
        format.html { redirect_to @aondetail, notice: 'Aondetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @aondetail }
      else
        format.html { render :edit }
        format.json { render json: @aondetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aondetails/1
  # DELETE /aondetails/1.json
  def destroy
    @aondetail.destroy
    respond_to do |format|
      format.html { redirect_to aondetails_url, notice: 'Aondetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aondetail
      @aondetail = Aondetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aondetail_params
      params.require(:aondetail).permit(:cardholder_id, :roll, :bid, :win)
    end
end
