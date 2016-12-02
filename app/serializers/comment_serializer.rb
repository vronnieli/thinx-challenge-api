class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment_text, :created_at, :parent_comment_id, :post_id, :user_id
  has_many :sub_comments, class_name: "Comment"
end
