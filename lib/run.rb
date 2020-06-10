# require 'pry'
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
checkout4 = Checkout.new(shawn, book2)

puts 'Book knows its users!'
puts book1.users.include?(shawn)
puts !book2.users.include?(shawn)

puts 'Books knows its checkouts!'
puts book1.user_checkouts.include?(checkout3)

puts 'Book knows its author!'
puts Book.search_by_author("Balzac").include?(book2)

puts 'Book knows its genre!'
puts Book.search_by_genre("Fantasy").include?(book1)
puts !Book.search_by_genre(book1.genre).include?("Classic")

puts 'User knows its checkouts!'
puts shawn.book_checkouts.include?(checkout1)
puts !shawn.book_checkouts.include?(checkout2)

puts 'User knows books he/she checkout!'
puts solomon.books.include?(book2)
puts !shawn.books.include?(book2)

puts 'Users with more than one checkout!'
puts Checkout.users_checkout_more_than_once.include?(solomon)
puts !Checkout.users_checkout_more_than_once.include?(shawn)

puts 'Checkout class knows the user with highest checkout!'
puts Checkout.all_star_reader.include?(solomon)
puts Checkout.all_star_reader.include?(shawn)

# binding.pry
# workaround = true