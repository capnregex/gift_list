require 'rails_helper'

RSpec.describe "wishers/show", type: :view do
  before(:each) do
    assign(:wisher, Wisher.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
