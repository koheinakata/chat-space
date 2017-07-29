class MessagesController < ApplicationController

  before_action :set_group, :set_messages, only: [:index, :create]
  # before_action :move_to_signed_in

  def index
    # @group = Group.find(1)
    # @groups = current_user.groups
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to controller: :messages, action: :index
    else
      flash[:alert] = "メッセージと画像を入力してください"
      redirect_to controller: :messages, action: :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :image).merge(group_id: 1, user_id: 1)
  end

  def set_group
    @group = Group.find(1)
    # @group = current_user.groups.find(params[:group_id])
    @groups = current_user.groups
  end

  def set_messages
    @messages = @group.messages.includes(:user)
  end

  # def move_to_signed_in
  #   redirect_to "new_user_session_path" unless user_signed_in?
  # end

end
