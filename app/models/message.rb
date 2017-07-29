class Message < ApplicationRecord
  belongs_to :user
  belongs_to :group
  validates :body, presence: true
  validates :image, presence: true
  # carrier_wave apploader
  mount_uploader :image, ImageUploader
  # def create
  #   Message.create(create_params)
  #   redirect_to "/"
  # end

  # private
  # def create_params
  #   params.require(:message).permit(:body, :image).merge(group_id: params[:group_id])
  # end
end
