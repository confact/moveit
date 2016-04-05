require 'rails_helper'

RSpec.describe 'offers/new', type: :view do
  before(:each) do
    assign(:offer, Offer.new(
                     name: 'MyString',
                     email: 'MyString',
                     from_address: 'MyString',
                     to_address: 'MyString',
                     distance: 1,
                     living_area: 1,
                     storage_area: 1,
                     piano: false,
                     help: false,
                     price: 1
    ))
  end

  it 'renders new offer form' do
    render

    assert_select 'form[action=?][method=?]', offers_path, 'post' do
      assert_select 'input#offer_name[name=?]', 'offer[name]'

      assert_select 'input#offer_email[name=?]', 'offer[email]'

      assert_select 'input#offer_from_address[name=?]', 'offer[from_address]'

      assert_select 'input#offer_to_address[name=?]', 'offer[to_address]'

      assert_select 'input#offer_distance[name=?]', 'offer[distance]'

      assert_select 'input#offer_living_area[name=?]', 'offer[living_area]'

      assert_select 'input#offer_storage_area[name=?]', 'offer[storage_area]'

      assert_select 'input#offer_piano[name=?]', 'offer[piano]'

      assert_select 'input#offer_help[name=?]', 'offer[help]'
    end
  end
end
