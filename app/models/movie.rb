class Movie < ActiveRecord::Base
 has_many :reviews, dependent: :destroy
 validates :title, presence: true
 validates :genre, presence: true, uniqueness: true
 validates :plot, presence: true
 validates :movie_length, presence: true
 validates :actor_list, presence: true
end