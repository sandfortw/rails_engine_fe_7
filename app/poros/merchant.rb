class Merchant
  attr_reader :id, :name

  def initialize(merchant_data)
    @id = merchant_data[:id]
    @name = merchant_data[:attributes][:name]
  end

  def items
    json = MerchantService.new.merchant_items(@id)
    json[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end
