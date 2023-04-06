# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MerchantFacade do
  let(:params) { { controller: 'merchants', action: 'show', id: 2 } }

  describe '#merchants' do
    it 'returns an array of merchants' do
      expect(MerchantFacade.new(params).merchants).to be_an Array
      expect(MerchantFacade.new(params).merchants.first).to be_a Merchant
    end
  end

  describe '#merchant' do
    it 'returns a single merchant' do
      expect(MerchantFacade.new(params).merchant).to be_a Merchant
    end
  end
end
