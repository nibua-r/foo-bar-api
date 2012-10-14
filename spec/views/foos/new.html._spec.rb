require 'spec_helper'

describe "foos/new" do
  before(:each) do
    assign(:foo, stub_model(Foo,
      :word => "MyString",
      :sentence => "MyString"
    ).as_new_record)
  end

  it "renders new foo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => foos_path, :method => "post" do
      assert_select "input#foo_word", :name => "foo[word]"
      assert_select "input#foo_sentence", :name => "foo[sentence]"
    end
  end
end
