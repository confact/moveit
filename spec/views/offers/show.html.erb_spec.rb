require 'rails_helper'

RSpec.describe 'offers/show', type: :view do
  before(:each) do
    @offer = assign(:offer, create(:offer))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/test@example.org/)
    expect(rendered).to match(/From Address/)
    expect(rendered).to match(/To Address/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Nej/)
    expect(rendered).to match(/Nej/)
    expect(rendered).to match(/1 010/)
  end
end
