# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) { | n | "example#{n}@example.com" }
    password "password"
    password_confirmation "password"
    role "Technician"
  end

  factory :admin, :parent => :user do
    role "Administrator"
  end

  factory :admin_user do
    email "admin@example.com"
    password "password"
  end
end