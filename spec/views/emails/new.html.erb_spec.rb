require 'spec_helper'

describe "emails/new" do
  before(:each) do
    assign(:email, stub_model(Email,
      :headers => "MyText",
      :text => "MyText",
      :html => "MyText",
      :from => "MyString",
      :to => "MyString",
      :cc => "MyString",
      :subject => "MyString",
      :dkim => "MyString",
      :spf => "MyString",
      :envelope => "MyText",
      :charsets => "MyString",
      :spam_score => 1,
      :spam_report => "MyString"
    ).as_new_record)
  end

  it "renders new email form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => emails_path, :method => "post" do
      assert_select "textarea#email_headers", :name => "email[headers]"
      assert_select "textarea#email_text", :name => "email[text]"
      assert_select "textarea#email_html", :name => "email[html]"
      assert_select "input#email_from", :name => "email[from]"
      assert_select "input#email_to", :name => "email[to]"
      assert_select "input#email_cc", :name => "email[cc]"
      assert_select "input#email_subject", :name => "email[subject]"
      assert_select "input#email_dkim", :name => "email[dkim]"
      assert_select "input#email_spf", :name => "email[spf]"
      assert_select "textarea#email_envelope", :name => "email[envelope]"
      assert_select "input#email_charsets", :name => "email[charsets]"
      assert_select "input#email_spam_score", :name => "email[spam_score]"
      assert_select "input#email_spam_report", :name => "email[spam_report]"
    end
  end
end
