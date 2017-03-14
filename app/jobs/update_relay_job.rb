class CommentRelayJob < ApplicationJob
  def perform(study_spot)
    ActionCable.server.broadcast "messages:#{comment.message_id}:comments",
      comment: StudySpotsController.render(partial: 'comments/comment', locals: { comment: comment })
  end
end