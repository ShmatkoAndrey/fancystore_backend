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

start_shop.products.create({
  name: "CBD Oil - WAKE / 1000 mg Full Spectrum CBD Tincture",
  description: "WAKE is a 1000mg Full Spectrum CBD Oil and is everything that Common Ground stands for! It is simple, clean & honest CBD + MCT Oil + Terpenes that are combined to give your body exactly what it needs and nothing it doesn't. Formulated for anytime use, this Full Spectrum, high dose CBD oil is subtle, elegant & powerful.",
  price: 159,
  discount: 99,
  category_id: cat1.id
}).images.create({
  url: "http://thefancy-media-ec2.thefancy.com/1280/20190611/1970400179634837579_f6c2a607c165.jpg"
})

start_shop.products.create({
  name: "Lyfe Planter",
  description: "LYFE is a revolutionary levitating, rotating planter that hovers in the air using magnetic levitation.

  Designed in Sweden using the latest technology, LYFE features a solid oak base embedded with an electromagnetic coil, and a 12-sided geodesic, molded silicon planter (with a magnet) floating above it. As it rotates, Lyfe can follow the sun, exposing the plant to more light every day.

  LYFE is the brainchild of the makers of FLYTE, the luminescent hovering light bulb they created in 2016 which still has us scratching our heads.",
  price: 299,
  discount: nil,
  category_id: cat3.id
}).images.create([
{ url: "http://thefancy-media-ec1.thefancy.com/1280/20170525/1428648199563779929_c3510f356dff.jpg" },
{ url: "http://thefancy-media-ec3.thefancy.com/commerce/original/20190412/23eefbda81694c45ae093229715e6054.jpg" },
{ url: "http://thefancy-media-ec5.thefancy.com/commerce/original/20190412/e798372868d7460c9d7164cc068cd1d2.jpg" },
{ url: "http://thefancy-media-ec2.thefancy.com/commerce/original/20190412/576827989fef4a179b1ade65b5e36301.jpg" }
])

second_shop.products.create({
  name: "3L Indigo Service Shell",
  description: "
  Isaora's 3L fabric proves its worth. Made with precision-cut panels and fully-taped seams, the 3L Service Shell is like kryptonite to wet weather. Crafted out of an ultra-waterproof and highly breathable 3-layer Japanese nylon, this shell features multiple pockets, adjustable Velcro cuffs, and an adjustable hood.

  About 3-layer technology. 3-layer refers to the construction of a material consisting of an outer layer, an inner layer, and a membrane layer sandwiched in between. ",
  price: 425,
  discount: 400,
  category_id: cat1.id

}).images.create([
{ url: "http://thefancy-media-ec1.thefancy.com/1280/20150617/915791531435099662_7bf69be4df54.jpg" },
{ url: "http://thefancy-media-ec2.thefancy.com/commerce/original/20150623/1fc3c7c0cad34730a48d3ae8c1b136ff.jpg" }
])

start_shop.products.create({
  name: "GINO Glass Server by notNeutral",
  description: "It's only natural that notNeutral's meticulously designed and tested LINO cups should have an equally sophisticated way of brewing the coffee that goes into them.

  The GINO server holds 2 cups of brewed coffee and was conceived to partner with the award-wining GINO Dripper.

  Hand-blown from borosilicate, a laboratory-grade, lightweight glass that is heat and scratch resistant, the GINO server achieves the same seamless marriage of form and function as its forerunner.",
  price: 38,
  discount: 37,
  category_id: cat3.id
}).images.create([
  { url: "http://thefancy-media-ec4.thefancy.com/1280/20141107/754824226006897374_ab5af7ba667b.jpg" },
  { url: "http://thefancy-media-ec4.thefancy.com/commerce/original/20150224/0e698e3ab4b24979bfd3ccff28fd846a.jpg" },
])

second_shop.products.create({
  name: "Hermes Pochette In-The-Loop To Go Marquetee Multicolore",
  description: "Pouch in Epsom calfskin with 1 slot for multiple cards, inlay, a new metal pull-tab and zipped closure. Suitable for a large smartphone, multicolor Bleu (Blue) Indigo. Measures 7.9\" long x 5.9\" high x 0.2\” deep. Condition: New (never worn).  ",
  price: 4400,
  discount: nil,
  category_id: cat2.id
}).images.create([
  { url: "http://thefancy-media-ec6.thefancy.com/1280/20190611/1970396026544068647_a9e448865375.jpg" },
  { url: "http://thefancy-media-ec4.thefancy.com/commerce/original/20190611/30ebe5361dbf4fa289628e6c13b19c6e.jpg" },
])

start_shop.products.create({
  name: "Positive Energy I Giant Canvas Print by Randy Hibberd",
  description: "Choosing a Giant Artwork will make a huge statement in your room. All you need is a large bold piece of art to instantly give your home a stylish upgrade. Finally you can own prints larger than all current standard offers combined, thanks to our unique and easy DIY patented Giant Art stretcher.",
  price: 920,
  discount: nil,
  category_id: cat5.id
}).images.create([
  { url: "http://thefancy-media-ec5.thefancy.com/1280/20171128/1564477850902337711_7420f9ab24ec.jpg" },
  { url: "http://thefancy-media-ec6.thefancy.com/commerce/original/20171128/67441522d46f4e40be60e4463750fe04.jpg" },
  { url: "http://thefancy-media-ec3.thefancy.com/commerce/original/20171128/92f826ecbd0040e5905d5105d45ca83e.jpg" },
])

start_shop.products.create({
  name: "Deep Within Giant Canvas Print",
  description: " Choosing a Giant Artwork will make a huge statement in your room. All you need is a large bold piece of art to instantly give your home a stylish upgrade. Finally you can own prints larger than all current standard offers combined, thanks to our unique and easy DIY patented Giant Art stretcher.",
  price: 1135,
  discount: 560,
  category_id: cat5.id
}).images.create([
  { url: "http://thefancy-media-ec5.thefancy.com/1280/20161019/1270918459751931129_e4cc9fba6499.jpg" },
  { url: "http://thefancy-media-ec6.thefancy.com/commerce/original/20161019/e30806dd71c7410ebf4bbf6b1f5ee21c.jpg" },
])

start_shop.products.create({
  name: "",
  description: "SIZING CHART - CLICK HERE
  Our White & Silver charging bracelet is made from durable, real genuine leather - hand packaged, & tested for highest quality in Los Angeles, CA.
  Silver Plated Connecter
  Available in single & double wrap
  Water Resistant
  iPhone & Android (micro-USB)",
  price: 40,
  discount: 20,
  category_id: cat2.id
}).images.create([
  { url: "http://thefancy-media-ec6.thefancy.com/1280/20180131/1610814975188672307_ff10b6802f47.jpg" },
  { url: "http://thefancy-media-ec3.thefancy.com/commerce/original/20190305/3aa1b415f2104293ac89a840e397e4cd.jpg" },
])

second_shop.products.create({
  name: "The Iconic Batman Car Print",
  description: "Perhaps few vehicles have been so eternalized in film as the Batmobile; but its evolution over the decades has been an absolutely impressive one. From humble origins, this vehicle began as a wonder of the road, taking the dynamic duo wherever they needed to be.",
  price: 26,
  discount: nil,
  category_id: cat3.id
}).images.create([
  { url: "http://thefancy-media-ec1.thefancy.com/1280/20170915/1510723390598551739_e0aeb173cc89.jpg" },
  { url: "http://thefancy-media-ec1.thefancy.com/commerce/original/20170915/36b7a9122c4149ef959ccc3708f656b8.jpg" },
])

# start_shop.products.create({
#   name: "",
#   description: "",
#   price: 10,
#   discount: nil,
#   category_id: cat1.id
# }).images.create([
#   { url: "http:" },
#   { url: "http:" },
# ])
