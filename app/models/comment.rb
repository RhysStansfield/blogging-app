class Comment < ActiveRecord::Base
  has_many :comment_votes
  belongs_to :post

  def total_votes
    up - down
  end

  def voted?
    !(upvotes + downvotes).empty?
  end

  def up
    upvotes.size
  end

  def down
    downvotes.size
  end

  private

  def upvotes
    comment_votes.up
  end

  def downvotes
    comment_votes.down
  end

end
