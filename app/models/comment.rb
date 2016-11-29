class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :comments, class_name: "Comment"
end
