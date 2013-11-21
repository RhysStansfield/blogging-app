class Post < ActiveRecord::Base
  
  has_many :comments, dependent: :destroy
  has_many :votes, dependent: :destroy

  validates :title, presence: true,
                    length: { minimum: 5 }

  def total_votes
    return nil if (upvotes + downvotes).empty?
    up - down
  end

  def up
    upvotes.size
  end

  def down
    downvotes.size
  end

  private

  def upvotes
    votes.up
  end

  def downvotes
    votes.down
  end

end