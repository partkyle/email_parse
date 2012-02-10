require 'spec_helper'

describe "emails/index" do
  before(:each) do
    assign(:emails, [
      stub_model(Email,
        :headers => "MyText",
        :text => "MyText",
        :html => "MyText",
        :from => "From",
        :to => "To",
        :cc => "Cc",
        :subject => "Subject",
        :dkim => "Dkim",
        :spf => "Spf",
        :envelope => "MyText",
        :charsets => "Charsets",
        :spam_score => 1,
        :spam_report => "Spam Report"
      ),
      stub_model(Email,
        :headers => "MyText",
        :text => "MyText",
        :html => "MyText",
        :from => "From",
        :to => "To",
        :cc => "Cc",
        :subject => "Subject",
        :dkim => "Dkim",
        :spf => "Spf",
        :envelope => "MyText",
        :charsets => "Charsets",
        :spam_score => 1,
        :spam_report => "Spam Report"
      )
    ])
  end

  it "renders a list of emails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "From".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "To".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cc".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Subject".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Dkim".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Spf".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Charsets".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Spam Report".to_s, :count => 2
  end
end
