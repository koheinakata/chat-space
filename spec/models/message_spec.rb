# require 'rails_helper'

# describe Message do
#   describe '#create' do
#     #メッセージがあれば保存できる
#     let(:message) { build(:message, image: nil) }
#     it 'is valid included body' do
#       expect(message).to be_valid
#     end
#     # it 'is valid included body' do
#     #   message = build(:message, image: nil)
#     #   expect(message).to be_valid
#     # end

#     #画像があれば保存できる
#     let(:message) { build(:message, body: nil) }
#     it "is valid with image" do
#       expect(message).to be_valid
#     end
#     # it "is valid with image" do
#     #   message = build(:message, body: nil)
#     #   expect(message).to be_valid
#     # end

#     #メッセージと画像があれば保存できる
#     let(:message) { build(:message) }
#     it "is valid with a body and image" do
#       expect(message).to be_valid
#     end
#     # it "is valid with a body and image" do
#     #   message =  build(:message)
#     #   expect(message).to be_valid
#     # end

#     #メッセージも画像も無いと保存できない
#     let(:message) { build(:message, body: nil, image: nil) }
#     it "is invalid without a body and image" do
#       message.valid?
#       expect(message.errors[:body_or_image]).to include("can't be blank")
#     end
#     # it "is invalid without a body and image" do
#     #   message = build(:message, body: nil, image: nil)
#     #   message.valid?
#     #   expect(message.errors[:body_or_image]).to include("can't be blank")
#     # end

#     it "is invalid without a group_id" do
#       message = build(:message, group_id: nil)
#       message.valid?
#       expect(message.errors[:group_id]).to include("can't be blank")
#     end

#     it "is invalid without a user_id" do
#       message = build(:message, user_id: nil)
#       message.valid?
#       expect(message.errors[:user_id]).to include("can't be blank")
#     end
#   end
# end



require 'rails_helper'
describe Message do
  let(:message) do
    message = build(:message, body: body, image: image, user_id: user_id, group_id: group_id)
  end

  let(:body) { nil }
  let(:image) { nil }
  let(:user_id) { Faker::Number.number(1)}
  let(:group_id) { Faker::Number.number(1)}

  context "has body" do
    let(:body) { Faker::Lorem.sentence }

    it "is valid with message with a body" do
      message.valid?
      expect(message).to be_valid
    end
  end

  context "has image" do
    let(:image) { Faker::Avatar.image }

    it "is valid with message with an image" do
      message.valid?
      expect(message).to be_valid
    end
  end
end
