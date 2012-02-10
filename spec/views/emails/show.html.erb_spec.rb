require 'spec_helper'

describe "emails/show" do
  before(:each) do
    @email = assign(:email, stub_model(Email,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/From/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/To/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cc/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Subject/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Dkim/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Spf/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Charsets/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Spam Report/)
  end
end
