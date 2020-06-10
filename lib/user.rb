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
        
    end

    def books
        #returns all books user has checked out
        

    end

    def self.count
        self.all.count

    end

end