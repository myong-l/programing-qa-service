namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_questions
  end
end

def make_questions
  5.times do |n|
    Question.create!(title: "質問#{n+1}",
                     body:  "質問です。")
  end
end
