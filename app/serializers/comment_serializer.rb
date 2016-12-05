class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment_text, :created_at, :created_at_datetime, :parent_comment_id, :post_id, :user_id, :username
  has_many :sub_comments, class_name: "Comment"
end
