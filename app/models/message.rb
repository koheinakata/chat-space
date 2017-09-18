class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group

  #validation
  validates :body_or_image, :user_id, :group_id, presence: true

  private
  def body_or_image
    body.presence or image.presence
  end
end
