# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Merchant do
  let(:merchant_data) { { id: 1, attributes: { name: 'Merchant 1' } } }
  let(:merchant) { Merchant.new(merchant_data) }

  describe '#initialize' do
    it 'sets the id and name attributes' do
      expect(merchant.id).to eq(merchant_data[:id])
      expect(merchant.name).to eq(merchant_data[:attributes][:name])
    end
  end

  describe '#items' do
    it 'returns an array of items for the merchant' do
      expect(merchant.items).to all(be_an(Item))
    end
  end
end
