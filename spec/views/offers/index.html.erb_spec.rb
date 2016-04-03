require 'rails_helper'

RSpec.describe 'offers/index', type: :view do
  before(:each) do
    assign(:offers, [
             create(:offer),
             create(:offer)
           ])
  end

  it 'renders a list of offers' do
    render
    expect(rendered).to match(/Få Prisförslag/)
  end
end
