class Post < ActiveRecord::Base
<<<<<<< HEAD
  include ActiveModel::Validations
=======
>>>>>>> b80fd4fc7ab02a43893e14b21cb7a714a8f7ffb2
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 250 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), 
  message: "%{value} must be Fiction or Non-Fiction" }
<<<<<<< HEAD
  validate :non_clickbait
  
  def non_clickbait
    unless title && title.include?("Won't Believe" || "Secret" || "Top" || "Guess")
      errors.add(:non_clickbait, "Title not clickbaitey enough!")
    end
  end
  
  
  
end
=======
end
>>>>>>> b80fd4fc7ab02a43893e14b21cb7a714a8f7ffb2
