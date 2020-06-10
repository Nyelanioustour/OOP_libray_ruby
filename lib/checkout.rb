class Checkout
    attr_reader :book, :user
    @@all = []

    def initialize(user, book)
       @user = user
       @book = book 

       @@all << self
    end

    def self.users_checkout_more_than_once
        #returns all users who have more than one checouts
        count = 1
        User.all.select {|user| user.checkout_count > count}
    end


    def self.all_star_reader
        #returns the user with the highest number of checkouts
        count = 0
        User.all.each do |user|
            if user.checkout_count > count
             count = user.checkout_count
            end
        end
        User.all.select {|user| user.checkout_count == count}
    end

    def self.all
        @@all
    end
    
    def self.count
        self.all.count
    end

end