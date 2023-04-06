# frozen_string_literal: true

class MerchantService
  def all_merchants
    @all_merchants ||= get_url('http://localhost:3000/api/v1/merchants')
  end

  def one_merchant(id)
    get_url("http://localhost:3000/api/v1/merchants/#{id}")
  end

  def merchant_items(id)
    get_url("http://localhost:3000/api/v1/merchants/#{id}/items")
  end

  def get_url(url)
    response = Faraday.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
end
