class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group

  #validation
  validates :body_or_image, :user_id, :group_id, presence: true
  validates :body, presence: true, unless: :image?
  validates :image, presence: true, unless: :body?


  mount_uploader :image, ImageUploader

  private
  def body_or_image
    body.presence or image.presence
  end
end
