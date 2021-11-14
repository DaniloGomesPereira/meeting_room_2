# FactoryBot.define do
#   factory :meetings_app do
#     title { "MyString" }
#     description { "MyString" }
#     start_time { "2021-11-13 13:41:46" }
#     end_time { "2021-11-13 13:41:46" }
#     user_id { 1 }
#   end
# end

FactoryBot.define do
  factory :meetings_app do
    transient do
      user { create(:user) }
    end

    title { FFaker::Book.title }
    description { FFaker::Book.title }
    start_time { Time.zone.today - rand(1..28).days }
    end_time { Time.zone.today - rand(1..28).days }
    user_id { 1 }
  end
end
