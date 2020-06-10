class User
    attr_accessor :name, :address

    @@all = []

    def initialize(name, address)
        @name = name
        @address = address

        @@all << self
    end

    def self.all
        @@all
    end

    def book_checkouts
        #returns all checkouts by a user
        Checkout.all.select {|checkout| checkout.user == self}
    end

    def books
        #returns all books user has checked out
        self.book_checkouts.collect {|user_checkout| user_checkout.book}
    end

    def self.count
        self.all.count
    end

    def checkout_count
        # returns checkout count for a user
        self.book_checkouts.count
    end

end