require 'pry'
require_relative './user.rb'
require_relative './book.rb'
require_relative './checkout.rb'

book1 = Book.new("Sojurn", "Salvatore", "Fantasy")
book2 = Book.new("Lost Illusions", "Balzac", "Classic")

shawn = User.new("Shawn Alexander", "100 Peach St")
solomon = User.new("Solomon Y", "200 Apple Dr")

checkout1 = Checkout.new(shawn, book1)
checkout2 = Checkout.new(solomon, book2)
checkout3 = Checkout.new(solomon, book1)
binding.pry
workaround = true