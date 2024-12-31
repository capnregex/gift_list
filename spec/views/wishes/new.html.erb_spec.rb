require 'rails_helper'

RSpec.describe "wishes/new", type: :view do
  before(:each) do
    assign(:wish, Wish.new(
      wisher: nil,
      title: "MyString",
      url: "MyString",
      body: "MyText"
    ))
  end

  it "renders new wish form" do
    render

    assert_select "form[action=?][method=?]", wishes_path, "post" do

      assert_select "input[name=?]", "wish[wisher_id]"

      assert_select "input[name=?]", "wish[title]"

      assert_select "input[name=?]", "wish[url]"

      assert_select "textarea[name=?]", "wish[body]"
    end
  end
end
