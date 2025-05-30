class Chat < ApplicationRecord
    belongs_to :sender, class_name: 'User'
    belongs_to :receiver, class_name: 'User'
  
    has_many :messages, dependent: :destroy

    validates :sender_id, presence: true
    validates :receiver_id, presence: true
    validate :different_sender_receiver
    validate :chat_between_users_uniqueness
  
    private
  
    def different_sender_receiver
        if sender_id == receiver_id
            errors.add(:receiver_id, "must be different from sender")
        end
    end

    def chat_between_users_uniqueness
        if Chat.where(sender_id: sender_id, receiver_id: receiver_id)
                .or(Chat.where(sender_id: receiver_id, receiver_id: sender_id))
                .exists?
            errors.add(:base, "A chat between these users already exists")
        end
    end

end

  