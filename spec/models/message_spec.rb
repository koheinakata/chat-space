require 'rails_helper'

describe Message do
  describe '#create' do
    it 'is valid included a character' do
      message = build(:message)
      expect(message).to be_valid
    end

    it 'is invalid without a character' do
      message = build(:message, body: nil)
      message.valid?
      expect(message.errors[:body]).to include("を入力してください。")
    end
  end
end




# # 市川くん
# require 'rails_helper'
# require 'support/controller_macros'
# describe Message do
#   let(:message) { build(:message) }
#     describe '#create' do
#       it 'is valid included a character' do
#         expect(message).to be_valid
#       end

#       it 'is invalid without a character' do
#         message.body = ""
#         message.valid?
#         expect(message.errors[:body]).to include("を入力してください。")
#       end
#     end
# end
