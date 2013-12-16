require 'spec_helper'

describe "boards/edit" do
  before(:each) do
    @board = assign(:board, stub_model(Board, title: "hoge"))
  end

  it "renders the edit board form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", board_path(@board), "post" do
      assert_select "input[name=?]", "board[title]"
      assert_select "label[for=?]", "board_title", "Title"
      assert_select "input[value=?]", "hoge"
      assert_select "input[type=?]", "submit"
    end
  end
end
