# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all

User.create(:fullname => "admin", 
			:address1 => "N/A", 
			:address2 => "N/A",
			:postcode => "N/A", 
			:city => "N/A", 
			:country => "N/A", 
			:phone => 123456789,
			:email => "google@google.com",
			:password => "google", 
			:password_confirmation => "google",
			:admin => true)

User.create(:fullname => "local", 
			:address1 => "N/A", 
			:address2 => "N/A",
			:postcode => "N/A", 
			:city => "N/A", 
			:country => "N/A", 
			:phone => 123456789,
			:email => "local@google.com",
			:password => "google", 
			:password_confirmation => "google",
			:admin => false)
Product.delete_all
Product.create(:title=>'Jeans',
				:description=> 'Blue',
				:image_url=> (File.join(Rails.root, '/app/assets/images/img02.jpg' ) ),
				:price=> 49.50)


Product.create(:title=>'Hat',
				:description=> 'Brown',
				:image_url=> 'http://i1310.photobucket.com/albums/s644/aqpic2010/img09_zps8314c27e.png' ,
				:price=> 49.50)

#Product.create(name: 'Blue Jeans', 
#			   description: 'Good quality jeans', 
#			   price: '29', 
#			   image: (File.open(File.join(Rails.root, '/app/assets/images/img02.jpg' ) ) ) )
#


#Product.create(name: 'Brown Hat', 
#			   description: 'Good quality jeans', 
#			   price: '29', 
#			   image: (File.open(File.join(Rails.root, '/app/assets/images/img05.png')) ) )
