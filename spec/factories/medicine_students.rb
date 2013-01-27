# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :medicine_student do
    description "MyString"
    medicine nil
    student nil
  end
end
