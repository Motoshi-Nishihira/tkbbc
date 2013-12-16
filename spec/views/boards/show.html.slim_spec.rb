require 'spec_helper'

describe "boards/show" do
  let(:board) {stub_model(Board, id: 1, title: "first")}

  before(:each) do
    @board = assign(:board, board)
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers

    assert_select "p", "#{board.id}. title: #{board.title}"
  end
end
