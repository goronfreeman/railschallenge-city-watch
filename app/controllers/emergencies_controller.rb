class EmergenciesController < ApplicationController
  def new
    @emergency = Emergency.build
  end

  def create
    @emergency = Emergency.build(emergency_params)
  end

  private

  def emergency_params
    params.require(:emergency).permit(:fire_severity, :police_severity, :medical_severity)
  end
end
