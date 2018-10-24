class User < ApplicationRecord
	has_many :liens
	has_many :commentaries
	has_many :comment_to_commentaries
end
