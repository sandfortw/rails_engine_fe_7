require 'rails_helper'

RSpec.describe Item do
  let(:item_data) { { id: 1, attributes: { name: 'Item 1' } } }
  let(:item) { Item.new(item_data) }

  describe '#initialize' do
    it 'sets the id and name attributes' do
      expect(item.id).to eq(item_data[:id])
      expect(item.name).to eq(item_data[:attributes][:name])
    end
  end
end