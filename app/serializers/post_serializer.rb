class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :user_id, :image_url_thumb, :image_url_medium, :created_at, :created_at_datetime, :username
  has_many :comments
end
