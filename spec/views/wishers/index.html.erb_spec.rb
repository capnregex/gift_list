require 'rails_helper'

RSpec.describe "wishers/index", type: :view do
  before(:each) do
    assign(:wishers, [
      Wisher.create!(
        name: "Name"
      ),
      Wisher.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of wishers" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
  end
end
