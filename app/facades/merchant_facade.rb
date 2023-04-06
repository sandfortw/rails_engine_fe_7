class MerchantFacade 

  def initialize(params)
    @params = params
  end

  def merchants
    json = MerchantService.new.all_merchants
    
    json[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def merchant
    json = MerchantService.new.one_merchant(@params[:id])

    Merchant.new(json[:data])
  end

 
end