require 'rails_helper'

RSpec.describe "wishers/new", type: :view do
  before(:each) do
    assign(:wisher, Wisher.new(
      name: "MyString"
    ))
  end

  it "renders new wisher form" do
    render

    assert_select "form[action=?][method=?]", wishers_path, "post" do

      assert_select "input[name=?]", "wisher[name]"
    end
  end
end
