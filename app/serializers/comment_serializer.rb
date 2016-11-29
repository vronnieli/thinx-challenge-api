class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment_text, :parent_comment_id, :post_id, :user_id, :sub_comments
end
