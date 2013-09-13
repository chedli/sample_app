namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "Chedli Bourguiba",
                 email: "chaadow@msn.com",
                 password: "chedli",
                 password_confirmation: "chedli",
                 admin: true)
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end