class MessagesController < ApplicationController

  before_action :set_group, :set_groups, :set_messages, only: [:index, :create]

  def index
    @message = Message.new
  end

  def create
    @message = current_user.messages.new(message_params)
    # current_user.messages.new←これでcurrent_userのuser_idをセットできる
    if @message.save
      redirect_to controller: :messages, action: :index
    else
      flash[:alert] = "メッセージと画像を入力してください"
      # redirect_to controller: :messages, action: :index(参考までに残しております)
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :image).merge(group_id: params[:group_id])
  end

  def set_group
    @group = Group.find(params[:group_id])
  end

  def set_groups
    @groups = current_user.groups
  end

  def set_messages
    @messages = @group.messages.includes(:user)
  end

end
