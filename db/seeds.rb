# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all

User.create(:username => "admin",
			:email => "admin@admin.com",
			:password => "google", 
			:password_confirmation => "google",
			:admin => true)

User.create(:username => "google",
			:email => "google@google.com",
			:password => "google", 
			:password_confirmation => "google",
			:admin => true)

User.create(:username => "local",
			:email => "local@google.com",
			:password => "google", 
			:password_confirmation => "google",
			:admin => false)

User.create(:username => "mentor",
			:email => "mentor@google.com",
			:password => "google", 
			:password_confirmation => "google",
			:admin => false, 
			:mentor => true )

User.create(:username => "mentor2",
			:email => "mentor2@google.com",
			:password => "google", 
			:password_confirmation => "google",
			:admin => false, 
			:mentor => true )

User.create(:username => "mentor3",
			:email => "mentor3@google.com",
			:password => "google", 
			:password_confirmation => "google",
			:admin => false, 
			:mentor => true )

User.create(:username => "user1",
			:email => "user1@google.com",
			:password => "google", 
			:password_confirmation => "google",
			:admin => false, 
			:mentor => false )

User.create(:username => "user2",
			:email => "user2@google.com",
			:password => "google", 
			:password_confirmation => "google",
			:admin => false, 
			:mentor => false )
#Product.create(name: 'Blue Jeans', 
#			   description: 'Good quality jeans', 
#			   price: '29', 
#			   image: (File.open(File.join(Rails.root, '/app/assets/images/img02.jpg' ) ) ) )
#


#Product.create(name: 'Brown Hat', 
#			   description: 'Good quality jeans', 
#			   price: '29', 
#			   image: (File.open(File.join(Rails.root, '/app/assets/images/img05.png')) ) )
