class MerchantsController < ApplicationController
  before_action :merchant_facade

  def index; end

  def show; end

  private

  def merchant_facade
    @facade = MerchantFacade.new(params)
  end
end
