class MerchantsController < ApplicationController
  before_action :merchant_facade

  def index
    # response = Faraday.get('http://localhost:3000/api/v1/merchants')
    # json = JSON.parse(response.body, symbolize_names: true)
    # @merchants = json[:data].map do |merchant_data|
    #   Merchant.new(merchant_data)
    # end
  end

  def show
    # merchant_response = Faraday.get("http://localhost:3000/api/v1/merchants/#{params[:id]}")
    # json = JSON.parse(merchant_response.body, symbolize_names: true)
    # @merchant = Merchant.new(json[:data])
    # item_response = Faraday.get("http://localhost:3000/api/v1/merchants/#{params[:id]}/items")
    # json = JSON.parse(item_response.body, symbolize_names: true)
    # @items = json[:data].map do |item_data|
    #   Item.new(item_data)
    # end
  end

  private

  def merchant_facade
    @facade = MerchantFacade.new(params)
  end

end
