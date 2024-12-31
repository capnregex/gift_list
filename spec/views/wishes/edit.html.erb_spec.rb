require 'rails_helper'

RSpec.describe "wishes/edit", type: :view do
  let(:wish) {
    Wish.create!(
      wisher: nil,
      title: "MyString",
      url: "MyString",
      body: "MyText"
    )
  }

  before(:each) do
    assign(:wish, wish)
  end

  it "renders the edit wish form" do
    render

    assert_select "form[action=?][method=?]", wish_path(wish), "post" do

      assert_select "input[name=?]", "wish[wisher_id]"

      assert_select "input[name=?]", "wish[title]"

      assert_select "input[name=?]", "wish[url]"

      assert_select "textarea[name=?]", "wish[body]"
    end
  end
end
