class PhoneNUmbersController < ApplicationController
  before_action :set_phone_n_umber, only: [:show, :edit, :update, :destroy]

  # GET /phone_n_umbers
  # GET /phone_n_umbers.json
  def index
    @phone_n_umbers = PhoneNUmber.all
  end

  # GET /phone_n_umbers/1
  # GET /phone_n_umbers/1.json
  def show
  end

  # GET /phone_n_umbers/new
  def new
    @phone_n_umber = PhoneNUmber.new
  end

  # GET /phone_n_umbers/1/edit
  def edit
  end

  # POST /phone_n_umbers
  # POST /phone_n_umbers.json
  def create
    @phone_n_umber = PhoneNUmber.new(phone_n_umber_params)

    respond_to do |format|
      if @phone_n_umber.save
        format.html { redirect_to @phone_n_umber, notice: 'Phone n umber was successfully created.' }
        format.json { render :show, status: :created, location: @phone_n_umber }
      else
        format.html { render :new }
        format.json { render json: @phone_n_umber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_n_umbers/1
  # PATCH/PUT /phone_n_umbers/1.json
  def update
    respond_to do |format|
      if @phone_n_umber.update(phone_n_umber_params)
        format.html { redirect_to @phone_n_umber, notice: 'Phone n umber was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_n_umber }
      else
        format.html { render :edit }
        format.json { render json: @phone_n_umber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_n_umbers/1
  # DELETE /phone_n_umbers/1.json
  def destroy
    @phone_n_umber.destroy
    respond_to do |format|
      format.html { redirect_to phone_n_umbers_url, notice: 'Phone n umber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_n_umber
      @phone_n_umber = PhoneNUmber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_n_umber_params
      params.require(:phone_n_umber).permit(:number, :person_id)
    end
end
