class CommentToCommentary < ApplicationRecord
	belongs_to :user
    belongs_to :commentary
end
