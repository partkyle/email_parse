require 'spec_helper'

describe "parses/new" do
  before(:each) do
    assign(:parse, stub_model(Parse,
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new parse form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => parses_path, :method => "post" do
      assert_select "textarea#parse_content", :name => "parse[content]"
    end
  end
end
