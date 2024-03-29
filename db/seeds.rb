# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

settingsconfig = Rails.application.config_for(:settings)
ActiveAdminSetting.create!(name: settingsconfig["site_name"][:key], string: settingsconfig["site_name"][:value])
ActiveAdminSetting.create!(name: settingsconfig["org_name"][:key],  string: settingsconfig["org_name"][:value])
ActiveAdminSetting.create!(name: settingsconfig["org_desc"][:key],  string: settingsconfig["org_desc"][:value])
ActiveAdminSetting.create!(name: settingsconfig["aapq_default_email"][:key],  string: settingsconfig["aapq_default_email"][:value])

for value in settingsconfig["categories"][:values] do
     Category.create!(string: value)
end