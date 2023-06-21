class Post < ApplicationRecord
    #validate :clickbait_title
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: {in: %w(Fiction Non-Fiction)}

    #private
    #def clickbait_title
        #clickbait_phrases = ["Won't Believe", "Secret", /^Top \d+$/, "Guess"]
        #unless clickbait_phrases.any? { |phrase| phrase.match?(:title) }
            #errors.add(:title, "Not clickbait-y enough")
        #end
    #end
end
