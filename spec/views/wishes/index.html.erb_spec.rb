require 'rails_helper'

RSpec.describe "wishes/index", type: :view do
  before(:each) do
    assign(:wishes, [
      Wish.create!(
        wisher: nil,
        title: "Title",
        url: "Url",
        body: "MyText"
      ),
      Wish.create!(
        wisher: nil,
        title: "Title",
        url: "Url",
        body: "MyText"
      )
    ])
  end

  it "renders a list of wishes" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Url".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
