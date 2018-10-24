class Lien < ApplicationRecord
	belongs_to :user
	has_many :commentaries
end
