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
    # transient do
    #   user { create(:user) }
    # end

    title { FFaker::Book.title }
    description { FFaker::Book.title }
    start_time { DateTime.current }
    end_time { Time.zone.today }
    # user
  end
end
