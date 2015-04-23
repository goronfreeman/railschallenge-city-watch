  class EmergenciesController < ApplicationController
  def index
    @emergencies = Emergency.all
    render json: @emergencies
  end

  def show
    @emergency = Emergency.find(params[:id])
    render json: @emergency
  end

  def new
    @emergency = Emergency.build
  end

  def create
    @emergency = Emergency.build(emergency_params)
  end

  def edit
    @emergency = Emergency.find(params[:id])
    render json: @emergency
  end

  def update
    @emergency = Emergency.find(params[:id])
  end

  private

  def emergency_params
    params.require(:emergency).permit(:fire_severity, :police_severity, :medical_severity)
  end
end
