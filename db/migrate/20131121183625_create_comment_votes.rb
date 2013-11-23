class CreateCommentVotes < ActiveRecord::Migration
  def change
    create_table :comment_votes do |t|
      t.string :direction

      t.timestamps
    end
  end
end
