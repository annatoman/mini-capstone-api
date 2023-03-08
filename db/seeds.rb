product = Product.new(name: "Delphinium", price: 4, image_url: "example.url", description: "A beautiful and tall blue flower")
product.save

product = Product.new(name: "Peony", price: 6, image_url: "example.url", description: "A large bloom that comes in a variety of colors")
product.save

product = Product.new(name: "Chamomile", price: 3, image_url: "example.url", description: "Like a mini-daisy, super cute!")
product.save

supplier = Supplier.new(name: "Bill Doran", email: "bdoran@example.com", phone_number: "312-666-0164")
supplier.save

supplier = Supplier.new(name: "Kennicott", email: "kennicott@example.com", phone_number: "312-492-8200")
supplier.save

supplier = Supplier.new(name: "Chicago Wholesale Florist", email: "cwf@example.com", phone_number: "312-555-5555")
supplier.save