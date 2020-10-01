
FactoryBot.define do
  factory :random_word do
    sequence(:name) { |n| "name_#{n}" }
  end
end