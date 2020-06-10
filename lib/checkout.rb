class Checkout
    attr_reader :book, :user
    @@all = []

    def initialize(user, book)
       @user = user
       @book = book 

       @@all << self
    end

    def all_users
        #returns all users who have one or more number of checouts
        
    end

    def all_star_reader
        #returns the user with the highest number of checkouts
        
        
    end

    def self.all
        @@all
        
    end
    
    def self.count
        self.all.count

    end

end