require 'rails_helper'

RSpec.describe 'Merchants Index', type: :feature do
  let(:params) { { controller: 'merchants', action: 'show', id: 2 } }
  let(:merchants) { MerchantFacade.new(params).merchants }

  describe 'List of Merchants' do
    before do
      visit merchants_path
    end
    it 'should have a list of all merchant names as links' do
      merchants.each do |merchant|
        expect(page).to have_link(merchant.name)
      end
      click_link(merchants.first.name)
      expect(current_path).to eq(merchant_path(merchants.first.id))
    end
  end
end
