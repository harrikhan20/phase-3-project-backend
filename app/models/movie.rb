class Movie < ActiveRecord::Base
 has_many :reviews, dependent: :destroy
 validates :title, :genre, :plot, :movie_length, :actor_list,  presence: true
 
end