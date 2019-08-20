# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat1 = Category.find_or_create_by(name: "man");
cat2 = Category.find_or_create_by(name: "woman");
cat3 = Category.find_or_create_by(name: "home");
cat4 = Category.find_or_create_by(name: "gadgets");
cat5 = Category.find_or_create_by(name: "art");

start_shop = Shop.find_or_create_by(name: "start shop");
second_shop = Shop.find_or_create_by(name: "second shop");

start_shop.products.create({
  name: "TimeFlip Simple Time & Productivity Tracking",
  description: "Hack your time! App for iOS and Android.
  Simple TIME TRACKING device that analyses your productivity patterns
  MOBILE APPs available on Google Play and App Store
  GREAT BUSINESS GIFT for freelancers, software engineers, consultants, lawyers or business executives
  ASSIGN YOUR TASKS to the sides. Place TimeFlip so that your task faces up. Time tracking starts automatically",
  price: 59,
  discount: nil,
  category_id: cat4.id
}).images.create({
  url: "http://thefancy-media-ec5.thefancy.com/1280/20190315/1906685303112865559_9b0b7ea02342.jpg"
})

pr = second_shop.products.create({
  name: "Mini Cruiser - Vertical Stripe B&W",
  description: "The Mini-Skateboard is the perfect way to make a quick get away. Hand- built in Portland, OR from sturdy Black Walnut and White Maple, this little beast is made to cruise. Also, its small size is great for storing in a backpack or bag.

  This handmade board is crafted specifically to turn cruising and commuting into the best part of your day. Like a good pair of leather boots, daily use and wear makes the the vintage style of the board look even better.


  \"Boards by Hand\" isn't just a slogan. Each board is built individually with precision and carries the signature of the builder underneath the trucks.",
  price: 110,
  discount: nil,
  category_id: cat5.id
})
pr.images.create({url: "http://thefancy-media-ec3.thefancy.com/1280/20190802/2008105890338572191_5a6b8eab353d.jpg"})
pr.images.create({url: "http://thefancy-media-ec2.thefancy.com/commerce/original/20190802/66042e8195294e79bf1d0d785db25d13.jpg"})