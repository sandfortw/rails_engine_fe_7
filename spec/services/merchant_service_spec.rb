require 'rails_helper'

RSpec.describe MerchantService do
  let(:service) { MerchantService.new }

  describe '#all_merchants' do
    it 'returns all merchants from the API' do
      json = service.all_merchants
      expect(json).to be_an(Hash)
      expect(json[:data]).to be_an(Array)
      expect(json[:data].first[:id]).to be_a(String)
      expect(json[:data].first[:type]).to be_a(String)
      expect(json[:data].first[:attributes][:name]).to be_a(String)
    end
  end

  describe '#one_merchant' do
    it 'returns a single merchant from the API' do
      json = service.one_merchant(2)
      expect(json).to be_an(Hash)
      expect(json[:data]).to be_an(Hash)
      expect(json[:data][:id]).to be_a(String)
      expect(json[:data][:type]).to be_a(String)
      expect(json[:data][:attributes][:name]).to be_a(String)
    end  
  end

  describe '#merchant_items' do
    it 'returns items associated with a merchant from the API' do
      json = service.merchant_items(2)
      expect(json).to be_a(Hash)
      expect(json[:data]).to be_an(Array)
      expect(json[:data].first[:id]).to be_a(String)
      expect(json[:data].first[:type]).to be_a(String)
      expect(json[:data].first[:attributes][:name]).to be_a(String)
    end
  end
end