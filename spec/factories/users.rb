FactoryBot.define do
  factory :user do
    nickname { 'a' }
    email { Faker::Internet.email }
    password { '123abc' }
    password_confirmation { password }
    family_name { 'たろう' }
    first_name { 'やまだ' }
    family_name_kana { 'アアアアア' }
    first_name_kana { 'アアアアア' }
    birth_day { '2020-11-11' }
  end
end
