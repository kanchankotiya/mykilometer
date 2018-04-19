class ShopsController < ApplicationController
  before_action :set_shop, only: [:show]
  before_action :set_business_type, only: [:show, :index]
  # GET /shops
  # GET /shops.json
  def index
    @shops = @business_type.shops.all
  end

  # GET /shops/1
  # GET /shops/1.json
  def show
    @shops = Shop.near([@shop.latitude, @shop.longitude], 20, units: :km)
  end

 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop
      @shop = Shop.find(params[:id])
    end


    def set_business_type
      @business_type = BusinessType.find(params[:business_type_id])
    end
end
