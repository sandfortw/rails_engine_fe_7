# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Merchants Show Page', type: :feature do
  let(:params) { { controller: 'merchants', action: 'show', id: 2 } }
  let(:merchant) { MerchantFacade.new(params).merchant }
  let(:items) { merchant.items }

  describe 'Merchants Show Page' do
    before do
      visit merchant_path(merchant.id)
    end
    it 'should have a list of items' do
      items.each do |item|
        expect(page).to have_content(item.name)
      end
    end
  end
end
