class Person < ApplicationRecord
	has_many :tops
	has_many :movies, through: :tops
end
