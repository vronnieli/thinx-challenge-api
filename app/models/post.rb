class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  has_attached_file :image, styles: { thumb: "300x300", medium: "475x475" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def image_url_thumb
    image.url(:thumb)[19..-1]
  end

  def image_url_medium
    image.url(:medium)[19..-1]
  end

  def username
    self.user.username
  end

  def created_at_datetime
    self.created_at.asctime
  end

end
