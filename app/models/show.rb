class Show < ActiveRecord::Base

    # Define class methods to do all the test tasks
    def self.highest_rating
        Show.maximum(:rating)
    end
    def self.most_popular_show
        Show.order(:rating)
        Show.first
        # This order isnt working how you expected
    end
    
    def self.lowest_rating
        Show.minimum(:rating)
    end

    def self.least_popular_show
        Show.order("rating ASC").first
        # Show.last.name
        # Neither is this order
    end
    
    def self.ratings_sum
        Show.sum(:rating)
    end
    
    def self.popular_shows
        Show.where("rating>5")
    end
    def self.shows_by_alphabetical_order
        Show.order(:name).to_a
    end
    # Show.order("rating ASC")
end