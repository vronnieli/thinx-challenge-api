class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :subcomments, class_name: "Comment",
                        foreign_key: "comment_id"
  belongs_to :comment, class_name: "Comment"
end
