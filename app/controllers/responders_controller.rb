class RespondersController < ApplicationController
  def index
    @responders = Responder.all
  end

  def show
    @responder = Responder.find(params[:id])
  end

  def new
    @responder = Responder.build
  end

  def create
    @responder = Responder.build(responder_params)
  end

  def update
    @responder = Responder.find(params[:id])
  end

  private

  def responder_params
    params.require(:responder).permit(:service_type, :on_duty, :assigned)
  end
end
