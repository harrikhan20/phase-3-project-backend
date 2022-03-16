class Movie < ActiveRecord::Base
 has_many :reviews, dependent: :destroy
 validates :title, presence: true
 validates :genre, presence: true, uniqueness: true
end