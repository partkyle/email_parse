require 'spec_helper'

describe "parses/index" do
  before(:each) do
    assign(:parses, [
      stub_model(Parse,
        :content => "MyText"
      ),
      stub_model(Parse,
        :content => "MyText"
      )
    ])
  end

  it "renders a list of parses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
