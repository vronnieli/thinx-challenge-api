class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :user_id
  has_many :comments
end
