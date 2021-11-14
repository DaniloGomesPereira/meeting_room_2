FactoryBot.define do
  factory :user do
    email { "email@email.com" }
    encrypted_password { "123456" }
  end
end
