# This will guess the User class
FactoryGirl.define do
  factory :user do
    name "John"
    email "john@doe.com"
    password_digest "John"

  end

  factory :question do
    description "Description Here"
    title  "Title Here"
    user_id "1"
  end

  factory :response do
    description "Response Description"
    title "response title"
    user_id "1"
    question_id "1"
  end

  factory :vote do
    user_id "1"
    response_id "1"
    question_id "1"
  end
end
