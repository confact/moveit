class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :destroy]

  # GET /offers/1
  # GET /offers/1.json
  def show
    raise ActionController::RoutingError.new('Not Found') if @offer.nil?
  end

  # GET /offers/new
  def new
    @offer = Offer.new
  end

  # POST /offers
  # POST /offers.json
  def create
    @offer = Offer.new(offer_params)

    # Set user cookie
    cookies[:client] ||= Random.new_seed
    @offer.client = cookies[:client]

    respond_to do |format|
      if @offer.save
        format.html { redirect_to @offer, notice: 'Offer was successfully created.' }
        format.json { render :show, status: :created, location: @offer }
      else
        format.html { render :new }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_offer
    @offer = Offer.where(client: cookies[:client], id: params[:id]).first
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def offer_params
    params.require(:offer).permit(:name, :email, :from_address, :to_address, :distance, :living_area, :storage_area, :piano, :help)
  end
end
