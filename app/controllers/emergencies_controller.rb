class EmergenciesController < ApplicationController
  def index
    @emergencies = Emergency.all
  end

  def show
    @emergency = Emergency.find(params[:id])
  end

  def new
    @emergency = Emergency.build
  end

  def create
    @emergency = Emergency.build(emergency_params)
  end

  def update
    @emergency = Emergency.find(params[:id])
  end

  def dispatch
  end

  private

  def emergency_params
    params.require(:emergency).permit(:fire_severity, :police_severity, :medical_severity)
  end
end
