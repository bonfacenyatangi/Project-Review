class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews
  
    def leave_review(user, star_rating, comment)
      Review.create(product: self, user: user, star_rating: star_rating, comment: comment)
    end
  
    def print_all_reviews
      reviews.each do |review|
        puts "Review for #{products_name} by #{review.user.name}: #{review.star_rating}. #{review.comment}"
      end
    end
  
    def average_rating
      total_ratings = reviews.sum(:star_rating)
      total_reviews = reviews.count
  
      return 0 if total_reviews.zero?
  
      average = total_ratings.to_f / total_reviews
      average.round(2)
    end
  end
  
