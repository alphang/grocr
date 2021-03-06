# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

plain_user = User.create(:email => "user@example.com", :password => "userpassword")
plain_user.save!

admin_user = User.create(:email => "admin@example.com", :password => "adminpassword")
admin_user.admin = true
admin_user.save!
#admin_user.confirm!

product = Product.new(
               :name => "Brawny Paper Towels",
               :manufacturer => "Georgia Pacific",
               :price => "$24.93",
               :size  => "20 rolls",
               :upc => "324234234242",
               :description => "20 giant rolls = 30 regular rolls; " +
               " 69 sheets per roll; " +
               "2 ply; " +
               "Scrubs tough messes and soaks up spills; " +
               "Ships in Certified Frustration-Free Packaging;"
               )
product.image = File.open('spec/fixtures/Brawny-Giant-Rolls.jpg')
product.save!


product = Product.new(
               :name => "Bounty Paper Towels",
               :manufacturer => "Bounty",
               :price => "30.99",
               :size  => "15 rolls",
               :upc => "78686876876",
               :description => "20 giant rolls = 30 regular rolls; " +
               "69 sheets per roll; " +
               "2 ply; " +
               "Scrubs tough messes and soaks up spills; " +
               "Ships in Certified Frustration-Free Packaging;"
               )
product.image = File.open('spec/fixtures/Bounty-Paper-Towels.jpg')
product.save!

product = Product.new(
               :name => "Scott Paper Towels",
               :manufacturer => "Scott",
               :price => "8.79",
               :size  => "6 rolls",
               :upc => "65466546456",
               :description => "60% Recycled 100% absorbent; " +
               "<Durable for tough messes/li>" +
               "Choose-A-Size; Because messes don't come in one size fits all; " +
               "Has earned the green good housekeeping seal; " +
               "Packaging may vary from image shown;"
               )
product.image = File.open('spec/fixtures/Scott-Naturals.jpg')
product.save!
