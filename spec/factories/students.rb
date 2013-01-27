# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :student do
    first_name "MyString"
    last_name "MyString"
    dni "MyString"
    school_dni "MyString"
    sex false
    birthplace "MyText"
    direction "MyText"
    phone_number "MyString"
    birthdate "2013-01-27"
  end
end
