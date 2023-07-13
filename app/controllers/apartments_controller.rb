class ApartmentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  # GET /apartments or /apartments.json
  def index
    @apartments = Apartment.all
  end

  # GET /apartments/1 or /apartments/1.json
  def show; end
end
