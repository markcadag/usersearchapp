namespace :data_generator do
    desc "Generate fake users"
    task generate_users: :environment do
        100.times do
            name = Faker::Name.name
            email = Faker::Internet.email(name: name)
            age = Faker::Number.between(from: 18, to: 65)
            User.create!(name: name, age: age, email: email)
        end
        puts "Succesfully Generated 100 dummy users"
    end
end