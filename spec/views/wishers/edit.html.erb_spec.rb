require 'rails_helper'

RSpec.describe "wishers/edit", type: :view do
  let(:wisher) {
    Wisher.create!(
      name: "MyString"
    )
  }

  before(:each) do
    assign(:wisher, wisher)
  end

  it "renders the edit wisher form" do
    render

    assert_select "form[action=?][method=?]", wisher_path(wisher), "post" do

      assert_select "input[name=?]", "wisher[name]"
    end
  end
end
