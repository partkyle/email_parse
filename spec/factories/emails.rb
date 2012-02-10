# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :email do
    headers "MyText"
    text "MyText"
    html "MyText"
    from "MyString"
    to "MyString"
    cc "MyString"
    subject "MyString"
    dkim "MyString"
    spf "MyString"
    envelope "MyText"
    charsets "MyString"
    spam_score 1
    spam_report "MyString"
  end
end
