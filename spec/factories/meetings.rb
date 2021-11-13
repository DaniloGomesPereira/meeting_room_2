FactoryBot.define do
  factory :meeting do
    title { "MyString" }
    description { "MyString" }
    start_time { "2021-11-13 13:40:38" }
    end_time { "2021-11-13 13:40:38" }
    user_id { 1 }
  end
end
