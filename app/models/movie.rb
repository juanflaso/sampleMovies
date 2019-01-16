class Movie < ApplicationRecord
	has_many :tops
	has_many :people, through: :tops
end
