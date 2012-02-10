require 'spec_helper'

describe "parses/show" do
  before(:each) do
    @parse = assign(:parse, stub_model(Parse,
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
