module PostsHelper

  def vote_button(post, direction, link_text)
    button_to link_text, post_votes_path(post, direction: direction, format: :json), remote: true
  end

  def comment_vote_button(comment, direction, link_text)
    button_to link_text, post_comment_comment_votes_path(comment.post, comment, direction: direction, format: :json), remote: true
  end
  
end
