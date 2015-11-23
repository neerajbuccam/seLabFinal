# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    content "The painting is brilliant and i Love it"
    post_id 1
    user_id 1
  end
end
