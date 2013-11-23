class AddCommentIdToCommentVotes < ActiveRecord::Migration
  def change
    add_reference :comment_votes, :comment, index: true
  end
end
