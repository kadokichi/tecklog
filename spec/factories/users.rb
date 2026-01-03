FactoryBot.define do
  factory :user do
    nickname { 'テスト太郎' }
    sequence :email do |n|
      "test#{n}@example.com"
    end
    password { 'abcdefg' }
    password_confirmation { 'abcdefg' }
  end
end
