class Book
    attr_accessor :title, :author, :genre

    @@all = []

    def initialize(title, author, genre)
        @title = title
        @author = author
        @genre = genre

        @@all << self
        
    end

    def user_checkouts
        #returns all checkouts of a given book
        Checkout.all.select {|checkout| checkout.book == self}
    end

    def users
        #returns the name and address of users who have check out book
        self.user_checkouts.map{|checkouts| checkouts.user}
    end

    def self.author(author)
        #accepts a string, returns all books by an author
        self.all.select{|books| books.author == author}
    end
    
    def self.genre(genre)
        #accepts a string, returns all books of a genre
        self.all.select{|books| books.genre == genre}
    end
    def self.all
        @@all
    end



end