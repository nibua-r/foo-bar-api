require 'spec_helper'

describe "foos/index" do
  before(:each) do
    assign(:foos, [
      stub_model(Foo,
        :word => "Word",
        :sentence => "Sentence"
      ),
      stub_model(Foo,
        :word => "Word",
        :sentence => "Sentence"
      )
    ])
  end

  it "renders a list of foos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Word".to_s, :count => 2
    assert_select "tr>td", :text => "Sentence".to_s, :count => 2
  end
end
