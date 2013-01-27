# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inscription do
    student nil
    representative nil
    school_period nil
    level nil
    scholarship false
  end
end
