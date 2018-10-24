class CreateCommentToCommentaries < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_to_commentaries do |t|
    	t.text :content
    	t.belongs_to :user
    	t.belongs_to :commentary
      t.timestamps
    end
  end
end
