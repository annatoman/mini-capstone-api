product = Product.new(name: "Delphinium", price: 4, description: "A beautiful and tall blue flower")
product.save

product = Product.new(name: "Peony", price: 6, description: "A large bloom that comes in a variety of colors")
product.save

product = Product.new(name: "Chamomile", price: 3, description: "Like a mini-daisy, super cute!")
product.save

supplier = Supplier.create(name: "Bill Doran", email: "bdoran@example.com", phone_number: "312-666-0164")

supplier = Supplier.create(name: "Kennicott", email: "kennicott@example.com", phone_number: "312-492-8200")

supplier = Supplier.create(name: "Chicago Wholesale Florist", email: "cwf@example.com", phone_number: "312-555-5555")

image = Image.create(url: "http://t2.gstatic.com/licensed-image?q=tbn:ANd9GcTcfUR0GCit4cn8dGYpcfm4qB5CDum9PauKoGtGENnemjeq-O86jnJHm9y2XhQ4qDYo2smKQBd9wvlMAO8", product_id: 2)

image = Image.create(url: "https://www.bhg.com/thmb/zMXqKlxaSi2XdsnXXXNb23zxdYY=/1244x0/filters:no_upscale():strip_icc()/delphinium-blue-bird-garden-c1d30344-08871c2114334935a8d54385b7fe67ed.jpg", product_id: 2)
