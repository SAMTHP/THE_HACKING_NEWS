class Commentary < ApplicationRecord
	belongs_to :user
	belongs_to :lien
	has_many :comment_to_commentaries
end
