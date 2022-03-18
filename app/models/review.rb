class Review < ActiveRecord::Base
    belongs_to :movie
    validates :text, presence: true
    validates :rating, presence: true
end
