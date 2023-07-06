# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Experience.create(start_date: "1/1/2021", end_date: "12/31/2021", job_title: "Test Title A", company_name: "Test Company A", details: "Long list of experience things.")

Experience.create(start_date: "1/1/2022", end_date: "12/31/2022", job_title: "Test Title B", company_name: "Test Company B", details: "Stuff I did at this place")

Experience.create(start_date: "1/1/2023", end_date: "Current", job_title: "Test Title C", company_name: "Test Company C", details: "Currently doing x, y, z.")

Skill.create!(name: "Ruby")
Skill.create!(name: "JavaScript")
Skill.create!(name: "Rails")
Skill.create!(name: "React")
