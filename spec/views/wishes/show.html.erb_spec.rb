require 'rails_helper'

RSpec.describe "wishes/show", type: :view do
  before(:each) do
    assign(:wish, Wish.create!(
      wisher: nil,
      title: "Title",
      url: "Url",
      body: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/MyText/)
  end
end
