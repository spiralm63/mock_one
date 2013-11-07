require 'faker'

# create a few users
# User.create :name => 'Dev Bootcamp Student', :email => 'me@example.com', :password => 'password'
5.times do
  User.create :name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password'
end

# create a few technical skills
computer_skills = %w(Ruby Sinatra Rails JavaScript jQuery HTML CSS)
computer_skills.each do |skill|
  Skill.create :name => skill, :context => 'technical'
end

# create a few creative skills
design_skills = %w(Photoshop Illustrator Responsive-Design)
design_skills.each do |skill|
  Skill.create :name => skill, :context => 'creative'
end

# TODO: create associations between users and skills

# user1 = User.first
# user1.skills << Skill.create ( :name => 'Ruby', :context => 'technical' )
Proficiency.create(user_id: 2, skill_id: 1, years: 4, training: true)
Proficiency.create(user_id: 3, skill_id: 2, years: 3, training: false)
Proficiency.create(user_id: 4, skill_id: 3, years: 1, training: true)
Proficiency.create(user_id: 5, skill_id: 4, years: 4, training: true)
Proficiency.create(user_id: 1, skill_id: 3, years: 2, training: true)
Proficiency.create(user_id: 1, skill_id: 6, years: 1, training: true)