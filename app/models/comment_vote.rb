class CommentVote < ActiveRecord::Base
  
  belongs_to :comment

  scope :up, -> { where(direction: 'up') }
  scope :down, -> { where(direction: 'down') }

end
