class CardholdersController < ApplicationController
  before_action :set_cardholder, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name:"admin", password:"secret"

  # GET /cardholders
  # GET /cardholders.json
  def index
    @cardholders = Cardholder.all
  end

  # GET /cardholders/1
  # GET /cardholders/1.json
  def show
  end

  # GET /cardholders/new
  def new
    @cardholder = Cardholder.new
  end

  # GET /cardholders/1/edit
  def edit
  end

  # POST /cardholders
  # POST /cardholders.json
  def create
    @cardholder = Cardholder.new(cardholder_params)

    respond_to do |format|
      if @cardholder.save
        format.html { redirect_to @cardholder, notice: 'Cardholder was successfully created.' }
        format.json { render :show, status: :created, location: @cardholder }
      else
        format.html { render :new }
        format.json { render json: @cardholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cardholders/1
  # PATCH/PUT /cardholders/1.json
  def update
    respond_to do |format|
      if @cardholder.update(cardholder_params)
        format.html { redirect_to @cardholder, notice: 'Cardholder was successfully updated.' }
        format.json { render :show, status: :ok, location: @cardholder }
      else
        format.html { render :edit }
        format.json { render json: @cardholder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cardholders/1
  # DELETE /cardholders/1.json
  def destroy
    @cardholder.destroy
    respond_to do |format|
      format.html { redirect_to cardholders_url, notice: 'Cardholder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cardholder
      @cardholder = Cardholder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cardholder_params
      params.require(:cardholder).permit(:name, :email, :birthday, :card_number, :balance, :debit, :credit)
    end
end
