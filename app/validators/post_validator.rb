class PostValidator < ActiveModel::Validator
  def non_clickbait(record)
<<<<<<< HEAD
    unless record.title.match?("Won't Believe") || record.title.match?("Secret") || record.title.match?("Top [number]") || record.title.match?("Guess")
      errors.add(:title, "Title not clickbaitey enough!")
=======
    unless record.title.match?("Won't Believe") || record.title.match?("Secret") || record.titl
      validates record, inclusion: { in: %w("Won't Believe" "Secret" "Top [number]" "Guess"), 
  message: "%{value} must be clickbaitey" }
>>>>>>> b80fd4fc7ab02a43893e14b21cb7a714a8f7ffb2
    end
  end
end