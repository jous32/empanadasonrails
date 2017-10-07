class SystemInformationsController < ApplicationController
  before_action :set_system_information, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session

  # GET /system_informations
  # GET /system_informations.json
  def index
    @system_informations = SystemInformation.all
  end

  # GET /system_informations/1
  # GET /system_informations/1.json
  def show
  end

  # GET /system_informations/new
  def new
    @system_information = SystemInformation.new
  end

  # GET /system_informations/1/edit
  def edit
  end

  # POST /system_informations
  # POST /system_informations.json
  def create
    @system_information = SystemInformation.new(system_information_params)

    respond_to do |format|
      if @system_information.save
        format.html { redirect_to @system_information, notice: 'System information was successfully created.' }
        format.json { render :show, status: :created, location: @system_information }
      else
        format.html { render :new }
        format.json { render json: @system_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_informations/1
  # PATCH/PUT /system_informations/1.json
  def update
    respond_to do |format|
      if @system_information.update(system_information_params)
        format.html { redirect_to @system_information, notice: 'System information was successfully updated.' }
        format.json { render :show, status: :ok, location: @system_information }
      else
        format.html { render :edit }
        format.json { render json: @system_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_informations/1
  # DELETE /system_informations/1.json
  def destroy
    @system_information.destroy
    respond_to do |format|
      format.html { redirect_to system_informations_url, notice: 'System information was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_information
      @system_information = SystemInformation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_information_params
      params.require(:system_information).permit(:ram_available, :checked_at)
    end
end
