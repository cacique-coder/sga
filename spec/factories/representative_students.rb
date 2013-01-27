# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :representative_student do
    seek false
    kinship nil
    representative nil
    student nil
  end
end
