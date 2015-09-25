namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_questions
  end
end
def make_users
  5.times do |n|
    User.create!(name: "小次郎#{n+1}",
                 email:    "example-#{n+1}@sample.com",
                 password: "password",
                 password_confirmation: "password")
  end
end
def make_questions
  users = User.all
  5.times do |n|
    users.each { |user| user.questions.create!(title: "質問#{n+1}", body:  "質問です。") }
  end
end
