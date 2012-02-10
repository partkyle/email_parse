require 'spec_helper'

describe "parses/edit" do
  before(:each) do
    @parse = assign(:parse, stub_model(Parse,
      :content => "MyText"
    ))
  end

  it "renders the edit parse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => parses_path(@parse), :method => "post" do
      assert_select "textarea#parse_content", :name => "parse[content]"
    end
  end
end
