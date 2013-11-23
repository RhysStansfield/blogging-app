class CommentVotesController < ApplicationController

  def create
    @comment = Comment.find(params[:comment_id])
    @comment.comment_votes.create(direction: params[:direction])

    render json: { id: @comment.id, votes: @comment.total_votes, up: @comment.up, down: @comment.down }
  end

end
