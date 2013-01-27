# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :representative do
    dni "MyString"
    phone_number "MyString"
    mobile_number "MyString"
    observation "MyText"
  end
end
