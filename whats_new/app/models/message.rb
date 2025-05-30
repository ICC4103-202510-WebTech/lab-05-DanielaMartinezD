class Message < ApplicationRecord
    belongs_to :user
    belongs_to :chat

    validates :user_id, presence: true
    validates :chat_id, presence: true
    validates :body, presence: true
    validate :user_must_be_part_of_chat

    private

    def user_must_be_part_of_chat
      return unless chat && user
      unless [chat.sender_id, chat.receiver_id].include?(user.id)
        errors.add(:user, "must be a participant in this chat")
      end
    end

  end
  