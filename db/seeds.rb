# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

student1 = Student.create!(first_name: "John", last_name: "Johnson", email: "johnjohnson@test.com", phone_number: "555-555-5555", short_bio: "This is my short bio", linkedin_url: "https://linkedin.com/johnjohnson", twitter_handle: "@JohnJohnson", personal_website_url: "www.johnjohnson.com", online_resume_url: "www.johnjohnsonsresume.com", github_url: "www.github.com/johnjohnson", photo: "image@test.com")

student2 = Student.create!(first_name: "Joe", last_name: "Smith", email: "joesmith@test.com", phone_number: "444-444-4444", short_bio: "This is my short bio", linkedin_url: "https://linkedin.com/joesmith", twitter_handle: "@JoeSmith", personal_website_url: "www.joesmith.com", online_resume_url: "www.joesmithssresume.com", github_url: "www.github.com/joesmith", photo: "image@test.com")

User.create!(name: "Haroon", email: "h@email.com", password: "password", password_confirmation: "password")
User.create!(name: "Paolo", email: "p@email.com", password: "password", password_confirmation: "password")
User.create!(name: "Eli", email: "e@email.com", password: "password", password_confirmation: "password")

Experience.create!(start_date: "1/1/2021", end_date: "12/31/2021", job_title: "Test Title A", company_name: "Test Company A", details: "Long list of experience things.", student_id: student1.id)

Experience.create!(start_date: "1/1/2022", end_date: "12/31/2022", job_title: "Test Title B", company_name: "Test Company B", details: "Stuff I did at this place", student_id: student1.id)

Experience.create!(start_date: "1/1/2023", end_date: "Current", job_title: "Test Title C", company_name: "Test Company C", details: "Currently doing x, y, z.", student_id: student2.id)

Skill.create!(name: "Ruby", student_id: student1.id)
Skill.create!(name: "JavaScript", student_id: student1.id)
Skill.create!(name: "Rails", student_id: student1.id)
Skill.create!(name: "React", student_id: student1.id)


Capstone.create!(name: "Resume App", description: "Resume App: features, accomplishments, learning while making project", url: "urltest.com", screenshot: "picture1.jpeg", student_id: student1.id)

Capstone.create!(name: "Recipe App", description: "Recipe App: food, food, and more food...", url: "urlfood.com", screenshot: "picture2.jpeg", student_id: student2.id)

Education.create!(start_date: "1/1/2000", end_date: "12/31/2000", degree: "Certificate", university_name: "Indiana University", details: "Important Details", student_id: student1.id)

Education.create!(start_date: "1/1/2010", end_date: "12/31/2010", degree: "Bachelors", university_name: "Purdue University", details: "Semi-important Details", student_id: student2.id)
