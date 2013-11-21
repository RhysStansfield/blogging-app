class VotesController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @post.votes.create(direction: params[:direction])

    render json: { id: @post.id, votes: @post.total_votes, up: @post.up, down: @post.down }
  end

end
