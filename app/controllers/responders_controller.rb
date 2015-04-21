class RespondersController < ApplicationController
  def new
    @responder = Responder.build
  end

  def create
    @responder = Responder.build(responder_params)
  end

  private

  def responder_params
    params.require(:responder).permit(:service_type, :on_duty, :assigned)
  end
end
