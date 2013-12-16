require 'spec_helper'

describe "boards/index" do
  let(:boards) {[
      stub_model(Board, id: 1, title: "first"),
      stub_model(Board, id: 2, title: "second")
    ]}

  before(:each) do
    assign(:boards, boards)
  end

  it "renders a list of boards" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers

    assert_select "table" do
      assert_select "thead" do
        assert_select "tr" do
          4.times do
            assert_select "tr"
          end
        end
      end
      assert_select "tbody" do
        boards.each do |board|
          assert_select "tr" do
            assert_select "td", "#{board.id}. title: #{board.title}"
            assert_select "td", "Show"
            assert_select "td", "Edit"
            assert_select "td", "Destroy"
          end
        end
      end
    end
  end
end
