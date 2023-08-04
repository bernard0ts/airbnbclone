class ApartmentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  # GET /apartments or /apartments.json
  def index
    @q = Apartment.ransack(params[:q])
    @pagy, @apartments = pagy(@q.result)
  end

  # GET /apartments/1 or /apartments/1.json
  def show
    @apartment = Apartment.find(params[:id])
  end
end
